
#include <stdio.h>
#include <orca.h>
#include <memory.h>
#include <GSOS.h>
#include "mario.h"
#pragma keep "o:io"

extern int playerX;
extern int playerXVel;
extern int baseline;
extern int levelTime;                   /* time limit */


segment "OBJPROCS";             /* new segment */

typedef struct BaddieRec {
   unsigned char ID;
   int XBlock;
   unsigned char YBlock;
   } BaddieRec;

unsigned int segOffset[63];		/* list of segment offsets */
char *extSegOffset[63];                /* list of external segments */
unsigned int segBlock[63];              /* location a segment is at */
unsigned int segLink[63];               /* number of segment to link to */
unsigned int segDestHorz[63];           /* destination of a seg. ref. */
unsigned int segDestVert[63];           /* destination of a seg. ref. */
BaddieRec badRecords[63];               /* number of enemies per segment */

Pointer LevData;                           /* global to hold data */
int numSegLinks;                        /* number of inter-segment links */
int badIndex;
int wIdx;

/******************************************************************
*
* int LoadSegment(int,Pointer)
*
* loads in the segment to be used by the game
*
*******************************************************************/

int LoadSegment(int segNum, Pointer Sptr)
{
int i;
char buff[10];
unsigned int word,word2;
int levelWidth;
unsigned char byte;

badIndex = 0;                   /* reset the baddie index */
wIdx = 0;
Sptr+=segOffset[segNum];        /* get the location in the file */

for (i=0;i<=5;++i) 
   buff[i] = *(Sptr+i);			        /* read in identifier string */
buff[6] = 0;					/* put in null char */
if ((strncmp(buff,"SMBSEG",5))==0) {
   Sptr+=6;
   *((int *) (0x019e00))= *Sptr+(*(Sptr+1) << 8); /* background color */
   Sptr+=2;
   levelWidth = *Sptr+(*(Sptr+1) << 8); 	/* width in blocks */
   Sptr+=2;
   playerX = *Sptr+(*(Sptr+1) << 8);            /* player's starting X */
   Sptr+=2;
   baseline = *Sptr+(*(Sptr+1) << 8);           /* player's starting base */
   Sptr+=2;
   for (i=0;i<32;i+=2) {                        /* screen pallette */
      *((int *) (0x019e00+i)) = *(Sptr+i)+(*(Sptr+1+i)<<8);
      }
   Sptr+=32;
   word = *Sptr+(*(Sptr+1)<<8);                 /* number of bad guys */
   Sptr+=2;
   word2 = word*4;                              /* 4 bytes/entry */
   for (i=0;i<word2;i+=4) {
      badRecords[badIndex].ID = *(Sptr+i);         /* Baddie ID  */
      badRecords[badIndex].XBlock = *(Sptr+1+i)+(*(Sptr+i+2)<<8); /* X-block */
      badRecords[badIndex].YBlock = *(Sptr+3+i);   /* Baddie Y-block */
      ++badIndex;
      }
   Sptr+=word2;
   numSegLinks = *Sptr+(*(Sptr+1)<<8);          /* inter-segment references */
   word2 = numSegLinks*8;                       /* 8 bytes/entry */
   Sptr+=2;
   for (i=0;i<word2;i+=8) {
      segBlock[i>>2] = *(Sptr+i)+(*(Sptr+i+1)<<8);  /* block number of link */
      segLink[i>>2] = *(Sptr+i+2)+(*(Sptr+i+3)<<8); /* segment to link to */
      segDestHorz[i>>2] = *(Sptr+i+4)+(*(Sptr+i+5)<<8);
      segDestVert[i>>2] = *(Sptr+i+6)+(*(Sptr+i+7)<<8);
      }
   Sptr+=word2;                         /* level data */
   InitLevel(Sptr,levelWidth);	        /* initialize with the default level */
   return 1;
   }
printf("Segment header not found.\n");
return 1;
}

/******************************************************************
*
* void InitSegList(Pointer)
*
* set the segment list for later reference
*
*******************************************************************/

void InitSegList(Pointer Sptr)
{
unsigned char numSeg;
int i,j;

numSeg = *Sptr++;               /* get the number of local segments */
for (i=0;i<numSeg;++i) {        /* go through and fill the table */
   segOffset[i] = *Sptr+(*(Sptr+1)<<8);
   Sptr += 2;
   }
numSeg = *Sptr++;               /* get number of external segments */
for (i=0;i<numSeg;++i) {        /* go through and fill the table */
   extSegOffset[i] = (char *) Sptr;
   j=0;
   while (*(Sptr+j) != 0)       /* Skip for now */
      ++j;
   Sptr+=(j+1);
   }
}

/******************************************************************
*
* Handle LoadFile(char *file)
*
* load a file into memory, returns a locked handle
*
*******************************************************************/

Handle LoadFile(char *file)
{
RefNumRecGS clRec;              /* CloseGS record */
OpenRecGS opRec;                /* OpenGS record */
IORecGS rdRec;                  /* ReadGS record */
GSString255 fileStr;
Handle Hndl;                    /* handle to the memory it's in */

opRec.pCount = 12;              /* open the file */
fileStr.length = strlen(file);  /* make the file string */
strcpy(fileStr.text,file);

opRec.pathname = &fileStr;
opRec.requestAccess = 1;
opRec.resourceNumber = 0;
opRec.optionList = NULL;
OpenGS(&opRec);
if (toolerror() != 0) {
   printf("Error opening file: %s\n", file);
   return NULL;
   }
else {
   Hndl = NewHandle(opRec.eof, userid(), 0x8000, NULL);
   if (toolerror() != 0) {
      printf("Unable to allocate memory for level file.\n");
      return NULL;
      }
   else {
      rdRec.pCount = 4;                /* read in the file */
      rdRec.refNum = opRec.refNum;
      rdRec.dataBuffer = *Hndl;
      rdRec.requestCount = opRec.eof;
      ReadGS(&rdRec);                   /* call the OS */
      if (toolerror() != 0) {
         printf("Error reading file from disk.\n");
         return NULL;
         }
      }
   clRec.pCount = 1;
   clRec.refNum = opRec.refNum;
   CloseGS(&clRec);                     /* close the file */
   }
return Hndl;                            /* return the handle */
}

/******************************************************************
*
* void LoadLevel(char *fp)
*
* Reads in a level and loads the segment headers
*
*******************************************************************/

int LoadLevel(char *file)
{
Handle Loc;
Pointer Data;
int i;
char buff[30];

if ((Loc = LoadFile(file)) != NULL) {
   Data = *Loc;
   for (i=0;i<=6;++i) 
      buff[i] = *(Data+i);	                /* read in identifier string */
   buff[7] = 0;					/* put in null char */
   if ((strncmp(buff,"SMBIIGS",6))==0) {
      i=0;                              	/* found the header! */
      while (*(Data+7+i) != 0) {                /* read in the level name */
         buff[i]=*(Data+7+i);
         ++i;
         }
      buff[++i] = 0;
      levelTime = *(Data+7+i)+(*(Data+8+i)<<8); /* set the time */
      InitSegList(Data+9+i);                    /* set the segment pointers */
      LevData = *Loc;
      i = LoadSegment(0,LevData);
      return i;
      }
   }
return 0;
}

/******************************************************************
*
* void LoadSeg(int)
*
* loads in the segment to be used by the game
*
*******************************************************************/

void LoadSeg(int index)

{
int i;

i = LoadSegment(segLink[index],LevData);
}

/******************************************************************
*
* BOOLEAN IsSegLink(int)
*
* returns true or false depend on if the given block is in the
* segBlock list
*
*******************************************************************/

int IsSegLink(int blockNum)

{
int i;

for (i=0;i<numSegLinks;++i)
   if (segBlock[i] == blockNum)
      return i;
return 0xFFFF;

}

/******************************************************************
*
* void SpawnObject(int)
*
* Checks to see if the background point + Screenwidth uncovers
* a bad guy.  If so they are added to the ObjectArray and moved past
*
*******************************************************************/

void SpawnObject(void)
{

int i,Xpos,base,ID,XBlk,YBlk;
ObjectRec NewObj;

i = (GetBgndPnt()+ScreenWidth)>>3;      /* right side block number */
ID = badRecords[wIdx].ID;       /* set up for easier access */
XBlk = badRecords[wIdx].XBlock;
YBlk = badRecords[wIdx].YBlock;
if ((i >= XBlk) && (wIdx < badIndex)) {
   Xpos = (XBlk<<3)-GetBgndPnt()-playerXVel;
   base = (YBlk*13)+12;
   NewObj.Xpos = Xpos;
   NewObj.Ypos = base;
   NewObj.ID = ID;
   NewObj.XVel = 0;
   NewObj.YVel = 0;
   NewObj.other = 0;
   AddActiveObject(&NewObj);
   ++wIdx;
   }
}
