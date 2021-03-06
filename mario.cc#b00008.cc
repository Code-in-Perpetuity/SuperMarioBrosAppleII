/* This is the final rewrite of SMB */
#pragma lint -1
#pragma memorymodel 0			/* small memory model */
#pragma keep "o:super"

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <orca.h>
#include <Memory.h>
#include <types.h>
#include "mario.h"			/* defines and structures */
#include "objproc.h"
#include "io.h"				/* file I/O */
#include "static.h"			/* statics object procs */

/************************************************************
*
* General Global variables
*
************************************************************/

#define up	56
#define down	53
#define left	52
#define right	54
#define quit	27
#define null	0

/************************************
*
*  defines and variables for mario
*
*************************************/

#define maxVel 2        /* how fast mario can go */
#define turboVel 3	/* how fast with turbo */

BOOLEAN TDown;		/* used by HandleButton */
BOOLEAN jump;
BOOLEAN jumping;
BOOLEAN dead;
BOOLEAN jumpButton;	/* buttons A & B */
BOOLEAN turboButton;
BOOLEAN falling;
BOOLEAN inAir;
int jumpTable;
int jumpFrame;
int jumpState;
int COLORCYCLE;		/* for coins and ?-blocks */
int invinsCnt=0;		/* for super power time */
int intanCnt=0;		/* after a collision w/baddie */

int playerX;
int baseline;		/* foot level of the player */
int playerXVel;
int playerYVel;

long Score;		/* player's score */
int levelTime;		/* time left */
int timeCnt;		/* count frames 24 frames = 1 sec */
int fireballs;		/* counts the number of fireballs */
int BgndPnt;		/* offset of the level */
int mFrame;		/* animation frome of the player */
int COUNTER;		/* counter of how many frames we've done */
int playerState;	/* the players state as a bit field:
				bit 0: 0 = right, 1 = left
	                        bit 1: 0 = small, 1 = big
                                bit 2: 0 = not jump, 1 = jump
                                bit 3: 0 = stand, 1 = crouch
	                        bit 4: 0 = normal, 1 = firey
                                bit 5: 0 = no skid, 1 = skid */

int stateArray[] = {
		MarStandR,MarStandL,MarBigStandR,MarBigStandL,
		MarJumpR,MarJumpL,MarBigJumpR,MarBigJumpL,
                MarStandR,MarStandL,MarBigCrouchR,MarBigCrouchL,
                MarJumpR,MarJumpL,MarBigCrouchR,MarBigCrouchL,
		MarStandR,MarStandL,MarBigStandR,MarBigStandL,
		MarJumpR,MarJumpL,MarBigJumpR,MarBigJumpL,
                MarStandR,MarStandL,MarBigCrouchR,MarBigCrouchL,
                MarJumpR,MarJumpL,MarBigCrouchR,MarBigCrouchL,
                };

ObjectRec ObjectArray[maxObjects];	/* 32 objects on screen at once */
int ObjectTOC[maxObjects];		/* keep track of stuff */

extern unsigned int segDestHorz[];	/* arrays filled by LoadSegment */
extern unsigned int segDestVert[];
extern void deadAnim(void);

/******************************************************************
*
* FadeIn & FadeOut
*
* copies RGB values from bank 01 -> Bank E1 for effects
*
*******************************************************************/

void FadeOut(void)
{
int i,j;
char r,g,b;

for (i=16; i>=0; --i) {
   for (j=0; j<31; j+=2) {
      r = (*((char *) 0x019E00+j)&0xf);
      g = (*((char *) 0x019E00+j)&0xf0)>>4;
      b = (*((char *) 0x019E01+j)&0xf);
      r = (r*i)>>4;
      g = (g*i)>>4;
      b = (b*i)>>4;
      *((char *) 0xE19E00+j) = r+(g<<4);
      *((char *) 0xE19E01+j) = b;
      }
   Wait_For_VBL();			/* pause */
   
   }
}

void FadeIn(void)
{
int i,j;
char r,g,b;

for (i=0; i<16; ++i) {
   for (j=0; j<31; j+=2) {
      r = (*((char *) 0x019E00+j)&0xf);
      g = (*((char *) 0x019E00+j)&0xf0)>>4;
      b = (*((char *) 0x019E01+j)&0xf);
      r = (r*i)>>4;
      g = (g*i)>>4;
      b = (b*i)>>4;
      *((char *) 0xE19E00+j) = r+(g<<4);
      *((char *) 0xE19E01+j) = b;
      }
   Wait_For_VBL();			/* pause */
   }
}

/******************************************************************
*
* InitVar
*
* Initialize the variable to our liking
*
*******************************************************************/

void InitVar(void)

{
asm {
	lda #0
	sta fireballs
        sta mFrame
        sta playerXVel
        sta playerYVel
	sta TDown
        sta dead
        sta jumping
        sta falling
        sta BgndPnt
        sta jumpFrame
        sta jumpState
        lda #24
        sta timeCnt
        };

setNotIntan();		/* we are not intangible */
setNotClimb();		/* default of not climbing */
setNotInvins();		/* not invisible */
}

/******************************************************************
*
* void SetColors(int bool)
*
* Set mario's colors to either fire or normal
* TRUE = NORMAL,  FALSE = FIRE
*
*******************************************************************/

void SetColors(int bool)
{
#define normalBody 0x0841       /* 0x0090 */
#define normalClothes 0x0D00	/* 0x0FFF */
#define fireBody 0x0D00
#define fireClothes 0x0FF0

asm {
	lda bool
        beq Fls
        lda #normalBody
        ldx #normalClothes
        bra Put
Fls:	lda #fireBody
	ldx #fireClothes
Put:    sta >0xE19E04
        txa
        sta >0xE19E0E
	};
}

/******************************************************************
*
* void Intangent(void)
*
* Toggles mario's counts the time the player cannot be hit after
* colliding with an enemy
*
*******************************************************************/

void Intangent(void)
{
        
if (++intanCnt >= 50) {
   intanCnt = 0;
   setNotIntan();
   }
}

/******************************************************************
*
* void InvinsColors(void)
*
* Toggles mario's invinsibility colors depending on invinsCnt
*
*******************************************************************/

void InvinsColors(void)
{
#define Body1 0x0274
#define Clothes1 0x0C0C
#define Body2 0x0C0C
#define Clothes2 0x0274

asm {
	lda invinsCnt
        and #1
        beq Fls
        lda #Body1
        ldx #Clothes1
        bra Put
Fls:	lda #Body2
	ldx #Clothes2
Put:    sta >0xE19E04
        txa
        sta >0xE19E0E
	};

if (++invinsCnt >= 300) {
   invinsCnt = 0;
   setNotInvins();
   SetColors(!isFirey());
   }
}

/******************************************************************
*
* void SetActiveObject(ObjectRecPtr object, int ObjectPos)
*
* returns an active shape from the ObjectArray
*
*******************************************************************/

void SetActiveObject(ObjectRecPtr object, int ObjectPos)

{

if (ObjectPos < maxObjects)		/* make sure there's space */
   ObjectArray[ObjectPos].ID = object->ID;	/* set it */
   ObjectArray[ObjectPos].Xpos = object->Xpos;	/* set it */
   ObjectArray[ObjectPos].Ypos = object->Ypos;	/* set it */
   ObjectArray[ObjectPos].XVel = object->XVel;	/* set it */
   ObjectArray[ObjectPos].YVel = object->YVel;	/* set it */
   ObjectArray[ObjectPos].other = object->other;	/* set it */
}

/******************************************************************
*
* ObjectRecPtr GetActiveObject(int ObjectPos)
*
* returns an active shape from the ObjectArray
*
*******************************************************************/

ObjectRecPtr GetActiveObject(int ObjectPos)

{

if (ObjectPos < maxObjects) 	/* verify range */
   return &ObjectArray[ObjectPos];	/* if OK, return a value */
else
   return NULL;				/* else, WRONG */

}

/******************************************************************
*
* DeleteActiveObject
*
* deletes an active shape from the ObjectArray
*
*******************************************************************/

void DeleteActiveObject(int ObjectPos)

{
if (ObjectPos < maxObjects) {
   ObjectTOC[ObjectPos] = 0;	        /* remove Table of Contents entry */
   ObjectArray[ObjectPos].ID = 0;	/* remove ID */
   }
}


/******************************************************************
*
* DeleteAllObjects
*
* deletes all the object from the TOC
*
*******************************************************************/

void DeleteAllObjects(void)

{
int i;
for (i=0; i<maxObjects; ++i)
   DeleteActiveObject(i);	/* delete them all */
}

/******************************************************************
*
* AdjustActiveObjects
*
* Called by Scroll to adjust the screen position of the active
* ibjects so theu don't appear to 'slide'.
*
*******************************************************************/

void AdjustActiveObjects(int adjustVal)

{
int i;

for (i=0; i<maxObjects; ++i)
   if (ObjectTOC[i] != 0)
   ObjectArray[i].Xpos = ObjectArray[i].Xpos+adjustVal;

}

/******************************************************************
*
* AddActiveObject
*
* enters an active shape into the ObjectArray
*
*******************************************************************/

void AddActiveObject(ObjectRecPtr object)

{
int i = 0;

while (ObjectTOC[i] != 0)
   ++i;

ObjectTOC[i] = 1;
SetActiveObject(object,i);
   
}

/******************************************************************
*
* AddActiveObjects
*
* Adds all the active objects to the Queue
*
*******************************************************************/

void AddActiveObjects(int BgndPnt, int DeltaX)

{
int i;
ObjectRec  NewObj;

for (i=0; i < maxObjects; ++i) {
   if (ObjectTOC[i] != 0) {			/* is an object here? */
      if (ObjectArray[i].ID == 0) 		/* is it to be removed */
         DeleteActiveObject(i);			/* so remove it */
      else {
         AddShapeToQueue(ObjectArray[i].Xpos+DeltaX,
   		      ObjectArray[i].Ypos,
                      ObjectArray[i].ID);
	 SetBgndPnt(BgndPnt+DeltaX);		/* ***   TEST   **** */
         FillList(ObjectArray[i].Xpos,
   		      ObjectArray[i].Ypos,
                      ObjectArray[i].ID);	/* was DeltaX after .Xpos */
	 SetBgndPnt(BgndPnt);			/* ***  END TEST *** */
         }
      }
   }
   SpawnObject();		/* spawn any bad guys that have entered */
				/* the playfield */
}
/******************************************************************
*
* void IncrementFrame(void)
*
* goes to the next animation frame
*
*******************************************************************/

void IncrementFrame(void)

{
--mFrame;
if (mFrame < 1 || mFrame > 4)
	mFrame = 4;
}

/******************************************************************
*
* int FindShape()
*
* Returns the appropriate sprite for a give state
*
*******************************************************************/

int FindShape(void)
{

if (isClimbing()) {
   if (isBig()) {
      if (!isLeft()) {
         return MarBigClimbR1 + ((baseline&0x4)>>2);
         }
      else {
         return MarBigClimbL1 + ((baseline&0x4)>>2);
         }
      }
   else {
      if (!isLeft()) {
         return MarClimbR1 + ((baseline&0x4)>>2);
         }
      else  {
         return MarClimbL1 + ((baseline&0x4)>>2);
         }
      }
   }

if (isSkid())
   if (!isBig())
      return (!isLeft())?MarSlideR:MarSlideL;
   else
      return (!isLeft())?MarBigSlideR:MarBigSlideL;

else
   return stateArray[playerState&0x001F];
}

/******************************************************************
*
* Boolean IsShapeLegal(x,y,shape)
*
* Determined if a shape can be drawn at a location.
*
*******************************************************************/

BOOLEAN IsShapeLegal(int x0, int y0, int shape)
{
return ISLEGAL(x0,y0,shape,-1);
}

/******************************************************************
*
* Boolean IsShapeLegal2(x,y,shape)
*
* Determined if a shape can be drawn at a location.
* Excludes invisible shapes
*
*******************************************************************/

BOOLEAN IsShapeLegal2(int x0, int y0, int shape)
{
return ISLEGAL(x0,y0,shape,invisOneUp);
}

/******************************************************************
*
* int CoinCheck(x,y,shape)
*
* Checks if any of the blocks covered by the shape is a coin.  If
* YES then that block is erased.  The number of coins hit is returned
*
*******************************************************************/

int CoinCheck(int x0, int y0, int shape)
{

int result;
int width,height,Lwidth;
int x1,y1,x2,y2;
int c,d;

Lwidth = GetLevelWidth();
result = 0;
width = GetShapeWidth(shape);
height = GetShapeHeight(shape);
x1 = (int) (x0+GetBgndPnt())/HInterval;
x2 = (int) (x0+GetBgndPnt()+width-1)/HInterval;
y1 = DivBy13(y0);
y2 = DivBy13(y0+(height-1));

for (c = x1; c <= x2; ++c)
   for (d = y1; d <= y2; ++d)
      if (c>=0 && c<Lwidth && d>=0 && d<ScreenHeight/13)
         if (GetLevelItem(c,d) == (coinF|0x80)) {
	    ++result;
            DeleteLevelItem(c,d);
            }

return result;
}

/******************************************************************
*
* PipeUp
*
* handles the animation of coming pipes
*     
*******************************************************************/

void PipeUp(int base)
{
int playY,shape,base2,lft;

shape = FindShape();
playY = baseline - (GetShapeHeight(shape)-1);

lft = playerX>>3;

base2 = 12;
if (base+2 < 12)
   base2 = base+2;

while (baseline >= (base*13)) {
   AddShapeToQueue(playerX,playY,shape);  /* Add mario in */
   SetBgndPnt(BgndPnt);			/* ***   TEST   **** */
   FillList(playerX,playY,shape);	/* setup for erasure */
   SetBgndPnt(BgndPnt);			/* ***  END TEST *** */
   DrawQueue();                         /* draw stuff */
   DrawBkgnd(lft,lft+2,base,base2);	/* clip in the middle */
   Shadow_On();
   ScrollR(0);
   Shadow_Off();
   FixBgnd();		/* fix everything */
   --playY;		/* move on up */
   --baseline;
   }
}
                     
/******************************************************************
*
* PipeSide
*
* handles the animation of going into pipes
*     
*******************************************************************/

void PipeSide(int base)
{
int playY,playX,shape,base2,lft;

shape = FindShape();
playY = baseline - (GetShapeHeight(shape)-1);
playX = playerX+HInterval+2;

lft = (playerX>>3)+1;

base2 = 12;
if (base+1 < 12)
   base2 = base+1;

while (playerX <= playX) {
   IncrementFrame();			/* make a walking animation */
   shape = FindShape();
   if ((playerXVel!=0)&&(!isJump()&&!isCrouch()&&!isSkid()))
      shape-=mFrame;
   AddActiveObjects(BgndPnt,0);		/* put the active objects in the Queue */
   AddShapeToQueue(playerX,playY,shape);  /* Add mario in */
   SetBgndPnt(BgndPnt);			/* ***   TEST   **** */
   FillList(playerX,playY,shape);	/* setup for erasure */
   SetBgndPnt(BgndPnt);			/* ***  END TEST *** */
   DrawQueue();                         /* draw stuff */
   DrawBkgnd(lft,lft+1,base-1,base2);		/* clip in the middle */
   Shadow_On();
   ScrollR(0);
   Shadow_Off();
   FixBgnd();		/* fix everything */
   ++playerX;		/* move on down */
   }
}

/******************************************************************
*
* HandleHPipe
*
* handles going into pipes from the side
*     
*******************************************************************/

void HandleHPipe(void)
{
int x,y,y2,i,linkIndex;

x = ((int) (playerX+GetBgndPnt())/HInterval)+1; /* get block to the right */
y = DivBy13(baseline);  /* and foot level */
y2 = DivBy13(baseline+1); /* and below foot level */
if ((linkIndex = IsSegLink(x)) != 0xFFFF) {   /* check if link at this block */
   if (GetLevelItem(x,y) == (HPipe1Bot|0x80)) {
   if (GetLevelItem(x,y2) != (HPipe1Bot|0x80)) {
      PipeSide(y);
      FadeOut();
      for (i=0;i<30;++i)
         Wait_For_VBL();		/* pause */

      Shadow_On();
      ClearScreen();			/* reset the screen */
      Shadow_Off();

      x = segDestHorz[linkIndex];	/* horizontal destination */
      y = segDestVert[linkIndex];	/* vertical destination (baseline) */
      LoadSeg(linkIndex);		/* load in the new segment */
      DeleteAllObjects();		/* clear any shapes */
      InitVar();			/* reset variables */

/* In here I need to read the destination values for exiting the pipe.
** If the are (-1,-1), then use defaults w/ BgndPnt = 0.
** Else, use the block numbers as an offset and set BgndPnt to 3 blocks earlier
** uless it's a range problem
*/

      if (x == 0xFFFF) {
         SetBgndPnt(BgndPnt);		/* start at beginning (default) */
         Shadow_Off();
         DrawBkgnd(0,16,0,12);		/* and show the screen */
         Shadow_On(); ScrollR(0);	/* shadow it */
	 FadeIn();
         ScrollR(0);
         }
      else {
         BgndPnt = (x-4)*HInterval;
         SetBgndPnt(BgndPnt);		/* else offset a bit */
         Shadow_Off();
         DrawBkgnd(0,16,0,12);		/* and show the screen */
         Shadow_On(); ScrollR(0);	/* shadow it */
	 FadeIn();
         playerX = (4*HInterval)+4;	/* stand in the middle of the pipe */
         baseline = ((y*13)-1)+(2*VInterval); /* start in the pipe */
         PipeUp(y);			/* do the animation */
	 baseline = ((y*13)-1);
         }
      }
   }
   }
}

/******************************************************************
*
* void HitWalkRgt(void)
*
* Player hit a block moving to the right
*
*******************************************************************/

void HitWalkRgt(void)
{

HandleHPipe();		/* check for pipes */
playerXVel = 0;
setRight();


}

/******************************************************************
*
* void MovePlayerRight(void)
*
* Moves the player rightward
*
*******************************************************************/

void MovePlayerRight(void)

{
int vert = GetShapeHeight(FindShape())-1;
if (isJump())
   playerXVel += ((COUNTER&0x4) != ((COUNTER-1)&0x4))?1:0;
else
   ++playerXVel;		/* go faster to the right */

if (playerXVel > maxVel && !turboButton)
   playerXVel = maxVel;
else if (playerXVel > turboVel)
   playerXVel = turboVel;

if (IsShapeLegal2(playerX+playerXVel,baseline-vert,FindShape())) {
   if ((playerXVel > 0) && !isJump()) {
      setRight();
      IncrementFrame();
      }
   else
      if (!isJump())
      setSkid();
   }
else
   HitWalkRgt();

if (playerXVel >= 0)
   setNoSkid();
}

/******************************************************************
*
* void HitWalkLft(void)
*
* Player hit a block moving to the left
*
*******************************************************************/

void HitWalkLft(void)
{
playerXVel = 0;
setLeft();
HandleHPipe();		/* check for pipes */
}

/******************************************************************
*
* void MovePlayerLeft(void)
*
* Moves the player leftward
*
*******************************************************************/

void MovePlayerLeft(void)

{
int vert = GetShapeHeight(FindShape())-1;
int tmp;

if (isJump())
   playerXVel -= ((COUNTER&0x4) != ((COUNTER-1)&0x4))?1:0;
else
   --playerXVel;		/* go faster to the right */

if (playerXVel < -maxVel && !turboButton)
	playerXVel = -maxVel;
else if (playerXVel < -turboVel)
	playerXVel = -turboVel;

if (IsShapeLegal2(playerX+playerXVel,baseline-vert,FindShape())) {
   if ((playerXVel < 0) && !isJump()) {
      setLeft();
      IncrementFrame();
      }
   else
      if (!isJump())
        setSkid();
   }
else 
   HitWalkLft();

if (playerXVel <= 0)
	setNoSkid();
}

/******************************************************************
*
*  HitWhileFalling
*
* if the player hit a object while falling downwards, we handle it here
*   adding new objects to the screen, taking care of invisible blocks,
*   etc.  are all done here.
*
*******************************************************************/

void HitWhileFalling(void)
{
int Vert;

playerYVel = 0;
setNotJump();
Vert = GetShapeHeight(FindShape())-1;
falling = FALSE;
jumping = FALSE;
baseline = ((DivBy13(baseline)+1)*13)-1;
}

/******************************************************************
*
* HitWhileJumping
*
* if the player hit a object while jumping upwards, we handle it here
*   adding new objects to the screen, taking care of invisible blocks,
*   etc.  are all done here.
*
*******************************************************************/

void HitWhileJumping(void)

{
int object,tempX,tempY;
int Vert = GetShapeHeight(FindShape())-1;

tempY = baseline - Vert;
tempX = playerX+GetBgndPnt();
tempX = tempX >> 3;  			/* (int) tempX/8; */
tempY = DivBy13(tempY);			/* (int) tempY/13; */
if (GetLevelItem(tempX,tempY) == 0)	/* may hit block on right edge */
   ++tempX;

object = GetLevelItem(tempX,tempY)&0x7f;	/* get the object */

switch(object) {		
      case redBrick:       	BreakBrick(tempX,tempY);	break;
      case blueBrick:		BreakBrick(tempX,tempY);	break;
      case powerQBlk:
      case powerUpBrickR:	PowerUp(tempX,tempY);		break;
      case powerUpBrickB:	PowerUp(tempX,tempY);		break;
      case starBrickR:		PowerStar(tempX,tempY);		break;
      case invisOneUp:
      case oneUpBrickR:		DoOneUp(tempX,tempY);		break;
      case QBlock:		DoSingleCoin(tempX,tempY);	break;
      case coinBrickR:
      case coinBrickB:    	DoMultiCoin(tempX,tempY);	break;
 /*   case vineBlock:
      case invisibleCoinBlock: */
      }
   jumping = FALSE;	/* set variables */
   falling = TRUE;
   jumpState = 0;
   baseline = ((DivBy13(baseline-Vert)+1)*13)+Vert;
   playerYVel = 0;
   
}

/******************************************************************
*
* HandleJump
*
* takes care of jumping with the player
* alters playerY and playerYVel
*
*******************************************************************/

void HandleJump(void)

{
int slowJump[] = {-11,-10,-8,-7,-6,-5,-3,-2,0,0};   
int walkJump[] = {-11,-11,-9,-7,-6,-5,-3,-2,0,0};   
int fastJump[] = {-11,-11,-11,-10,-8,-7,-5,-2,0,0};
int num = 9;
int Vert = GetShapeHeight(FindShape())-1;

if ((jumping) && (!falling)) {	
   if (jumpState <= num) {
      setJump();
      switch (jumpTable) {
         case 1: playerYVel = slowJump[jumpState]; break;
	 case 2: playerYVel = walkJump[jumpState]; break;
	 case 3: playerYVel = fastJump[jumpState]; break;
	 }
      baseline+=playerYVel;
      ++jumpState;
      if (!IsShapeLegal(playerX, baseline-Vert, FindShape()))
         if (IsShapeLegal(playerX,baseline-Vert-playerYVel,FindShape()))
	    HitWhileJumping();	/* we hit something */
      }
   else {
      playerYVel = 0; jumping = FALSE; falling = TRUE;
      jumpState = 0;
      }
   }
else {
   ++playerYVel;
   if (IsShapeLegal2(playerX,baseline-Vert+playerYVel,FindShape())) {
      baseline=baseline+playerYVel;
      if (playerYVel > 7)			/* can't go 8 at a time */
         playerYVel = 7;
      setJump();
      falling = TRUE;
      if (baseline-Vert > ScreenHeight)		/* if fall, die */
         dead=TRUE;
      }
   else 
	HitWhileFalling();		/* we hit something */
      
   }
}

/******************************************************************
*
* HandleFire
*
* handles throwing fireballs
*     
*******************************************************************/

void HandleFire(void)

{
ObjectRec newFire;	/* or object record */

if (fireballs < 0)
	fireballs = 0;

if (fireballs < 2) {     /* can we throw one? */
   ++fireballs;
   newFire.ID = fireball1;
   newFire.Xpos = playerX+(isLeft()?0:GetShapeWidth(FindShape()));
   newFire.Ypos = baseline - GetShapeHeight(FindShape());
   newFire.XVel = isLeft()?-4:4;	/* later we will need to check */
   newFire.YVel = 4;			/* which way we're facing */
   newFire.other = 0;
   AddActiveObject(&newFire);
   }
}

/******************************************************************
*
* PipeDown
*
* handles the animation of going down pipes
*     
*******************************************************************/

void PipeDown(int base)
{
int playY,shape,base2,lft;

shape = FindShape();
playY = baseline - (GetShapeHeight(shape)-1);

lft = playerX>>3;

base2 = 12;
if (base+2 < 12)
   base2 = base+2;

while (playY <= (base*13)) {
   AddActiveObjects(BgndPnt,0);		/* put the active objects in the Queue */
   AddShapeToQueue(playerX,playY,shape);  /* Add mario in */
   SetBgndPnt(BgndPnt);			/* ***   TEST   **** */
   FillList(playerX,playY,shape);	/* setup for erasure */
   SetBgndPnt(BgndPnt);			/* ***  END TEST *** */
   DrawQueue();                         /* draw stuff */
   DrawBkgnd(lft,lft+2,base,base2);		/* clip in the middle */
   Shadow_On();
   ScrollR(0);
   Shadow_Off();
   FixBgnd();		/* fix everything */
   ++playY;		/* move on down */
   }
}

/******************************************************************
*
* HandlePipe
*
* handles going down pipes
*     
*******************************************************************/

void HandlePipe(void)
{
int x,y,i,linkIndex;

x = (int) (playerX+GetBgndPnt())/HInterval;
y = DivBy13(baseline+1); /* +1 so get block below mario */
if ((linkIndex = IsSegLink(x)) != 0xFFFF) {   /* check if link at this block */
   if (GetLevelItem(x,y) == (pipeTopLeft|0x80)) {
      if (GetLevelItem(x+1,y) == (pipeTopRgt|0x80)) {
         PipeDown(y);			/* do the animation */
         FadeOut();
         for (i=0;i<30;++i)
            Wait_For_VBL();		/* pause */

         Shadow_On();
         ClearScreen();			/* reset the screen */
         Shadow_Off();
         
         LoadSeg(linkIndex);		/* load in the new segment */
         for (i=0;i<maxObjects;++i) {
            DeleteActiveObject(i);	/* clear all the shapes */
            ObjectArray[i].ID = 0;
            }

      	 for (i=0;i<30;++i)
            Wait_For_VBL();		/* pause */

      	 InitVar();			/* reset variables */
         SetBgndPnt(BgndPnt);		/* start at beginning */
         Shadow_Off();
         DrawBkgnd(0,16,0,12);		/* and show the screen */
         Shadow_On(); ScrollR(0);	/* shadow it */
         FadeIn();
         }
      }
   }
}

/******************************************************************
*
* HandleButtons
*
* handles everything associated with buttons A and B
*     
*******************************************************************/

void HandleButtons(void)

{

if (!TDown && turboButton) {
	TDown = TRUE;
        if (isFirey())
        	HandleFire();	/* throw a fireball */
        }
else if (TDown && !turboButton)
	TDown = FALSE;

if (jumpButton && !jumping && !falling) {
   jumping = TRUE;
   if (abs(playerXVel) <= 1) 
      jumpTable = 1;
   else
      if (abs(playerXVel) <= maxVel)
         jumpTable = 2;
      else
         jumpTable = 3;
   }
if (!jumpButton && jumping) {
   jumpState = 0;
   jumping = FALSE;
   falling = TRUE;
   playerYVel >>= 2;		/* slow down */
   }

   /* put an if here to handle the case of being in water */
HandleJump();			/* take care of jumping */
}

/******************************************************************
*
* void slowPlayer(void)
*
* slows the player down
*
*******************************************************************/
void slowPlayer(void)

{
int vert = GetShapeHeight(FindShape())-1;

if (playerXVel != 0) {
   playerXVel += (playerXVel>0)?-1:1;
   if (!IsShapeLegal2(playerX+playerXVel,baseline-vert,FindShape())) {
      if (playerXVel>0)
         HitWalkRgt();
      else
         HitWalkLft();
      }
   else
      IncrementFrame();
   }
}                 

/******************************************************************
*
* void MovePlayer(void)
*
* moves player around on the screen and handles all collisions
* with objects from bricks to enemies to powerups
*
*******************************************************************/

void MovePlayer(void)

{

ContRecPtr pad;			/* record to read the controller */

pad = ReadControl();		/* read the state of the controller */

jumpButton = pad->buttonA;
turboButton = pad->buttonB;

setStand();                 /* Assume we're not crouched */

switch (pad->direction) {
   case up:	playerXVel = 0;
                setStand();
   		break;

   case down:	playerXVel = 0;
		if (!isJump())
                	setCrouch();
                HandlePipe();		/* take care of going down pipes */
                break;

   case left:	MovePlayerLeft();
                break;

   case right:	MovePlayerRight();
   		break;

   case null:	slowPlayer();
   		break;

   case quit:	dead = TRUE;		/* exit */
		break;
   }
HandleButtons();
}

/******************************************************************
*
* MoveOthers
*
* moves all the stuff besides mario or luigi around
*
*******************************************************************/

void MoveOthers(void)
{
int i;
ObjectRecPtr obj;			/* for speed */

for (i=0; i < maxObjects; ++i) {
   obj = &ObjectArray[i];
   switch (ObjectArray[i].ID) {
      case OneUp:
      case mushroom:  		mushroomProc(obj);  break; 
      case fireFlower1:  	
      case fireFlower2:  	fireFlowerProc(obj); break;
      case PowerStar1:
      case PowerStar2:		starProc(obj);	break;
      case GoombaR1:
      case GoombaR2:
      case GoombaB1:
      case GoombaB2:		goombaProc(obj);	break;
      case KoopaGL1:  	
      case KoopaGL2:	
      case KoopaGR1: 	
      case KoopaGR2: 		KoopaProc(obj); 	break; 
      case fifty:
      case oneHundred:
      case twoHundred:
      case fourHundred:
      case eightHundred:
      case oneThousand:
      case twoThousand:
      case fourThousand:
      case fiveThousand:
      case eightThousand:
      case oneUpTxt:     	pointsProc(obj); 	break; 
      case redBrickPiece: 	rPieceProc(obj); 	break;
      case fireball1:
      case fireball2:
      case fireball3:
      case fireball4:		fireballProc(obj);	break;
      case explode1:
      case explode2:		explodeProc(obj);	break;
      case GoombaRFlat:
      case GoombaBFlat:		goomFlatProc(obj);	break;
      case ShellG1:
      case ShellG2:		shellProc(obj);		break;
      case flag:		flagProc(obj);		break;
      case QBlockBnc:
      case RBrickBnc:		bounceProc(obj);	break;
      case Coin1:
      case Coin2:
      case Coin3:		coinProc(obj);		break;
      case PlantG1:
      case PlantG2:		plantProc(obj);		break;
      case RMultiBnc:		multiProc(obj);		break;
      }
   }
}

/******************************************************************
*
* DoFrame
*
* calls various routines in the proper order to display a frame
*
*******************************************************************/

void DoFrame(int BgndPnt, int XVel)
{

if (XVel > 0) {
   DrawBkgnd(16,16,0,12); /* replaces DrawDisplay(x1,x2) (16,16,0,12) */
   DrawQueue();		/* Draw them, this will go before Scroll later */
   Shadow_On();	        /* display them */
   ScrollR(XVel);	/* show them */
   Shadow_Off();        /* hide them */
   SetBgndPnt(BgndPnt);
   FixBgnd();		/* restore what we drew over */
   }
else  {
   DrawQueue();
   Shadow_On();
   ScrollR(0);		/* make consistent */
   Shadow_Off();
   FixBgnd();		/* fix everything */
   }
}

/******************************************************************
*
* DrawScreen
*
* draws the screen according playerX,playerY,
*
*******************************************************************/

void DrawScreen(void)

{
int XVel,CurrentPnt;
int playY,shape;
int tmp;

++COUNTER;	/* we're making a new frame */

playY = baseline - (GetShapeHeight(FindShape())-1);
XVel = playerXVel;
if (isInvins())
	InvinsColors();			/* countdown of states */
if (isIntan())
	Intangent();

CurrentPnt = GetBgndPnt();  		/* get the background point */
if ((CurrentPnt+XVel+playerX) < 0) {
        XVel = 0;
        playerXVel = 0;                 /* if we're off screen, don't scroll */
        }

if (playerX+XVel < 0)  {                /* can't go to the left */
        playerX = 0;
	XVel = 0;
	}

if (playerX+XVel > (ScreenWidth/2)) {
   if ((playerX+XVel+CurrentPnt+(ScreenWidth/2)) < (GetLevelWidth()<<3)) {
      playerX = ScreenWidth/2;
      AdjustActiveObjects(-XVel);
      }
   else {
      playerX += XVel;
      XVel = 0;
      }
   }
 else {
    playerX += XVel;
    XVel = 0;
    }

shape = FindShape();
AddActiveObjects(BgndPnt,XVel);	/* put the active objects in the Queue */

tmp = CoinCheck(playerX+XVel, playY, shape);    /* take care of coins */
if (tmp != 0)
   Score=AddBCD(Score,tmp<<9);

if ((playerXVel!=0)&&(!isJump()&&!isCrouch()&&!isSkid()))
	shape-=mFrame;
if ((!isIntan()) || (COUNTER&0x1==0x1))
   AddShapeToQueue(playerX+XVel,playY,shape);  	/* Add mario in */

SetBgndPnt(BgndPnt+XVel);		/* ***   TEST   **** */
 FillList(playerX+XVel,playY,shape);	/* setup for erasure */
SetBgndPnt(BgndPnt);			/* ***  END TEST *** */

BgndPnt+=XVel;                   /* set the background point */

DoFrame(BgndPnt,XVel);		/* call the generic routine */
}

/******************************************************************
*
* main
*
* the main loop of the program
*
*******************************************************************/

void main(void)

{
char *lev = "level2";			/* level name */
int i,lives = 3;
long oldscore;				/* to save work */

InitScreen();				/* set up the graphics screen */
MarioInit();				/* initialize Mario Game */
COUNTER = 0;
setRight(); setSmall();
COLORCYCLE = 0;
invinsCnt = 0;
playerState = 0;
Score = 0;				/* start with 0 points */
oldscore = Score-1;

while (lives > 0) {
   Shadow_On();
   if ((i=LoadLevel(lev)) != 0) { 		/* load in the level */
      SetColors(TRUE);			/* normal mario */
      Shadow_On();
      ClearScreen();
      Wait_Keypress();
      InitVar();              		/* initialize global variables */
      SetBgndPnt(BgndPnt);
      Shadow_Off();
      DrawBkgnd(0,16,0,12); 		/* replaces DrawDisplayAll */
      /* DrawTitle(); */
      Shadow_On();
      ScrollR(0);			/* show it */
      setSmall();
      setNotFirey();			/* start a new life small */
      do {
         DrawScreen();			/* draw the level */
         CYCLE();			/* do color cycling */
         MovePlayer();			/* player goes first no matter what */
         MoveOthers();			/* move them around */
	 if (oldscore != Score) {
            PrintScore(Score);		/* print the score */
            oldscore = Score;
            }
         ++timeCnt;
         if (timeCnt >= 24) {
            levelTime = (int) AddBCD((long) levelTime,0x9999);
            PrintTime(levelTime);		/* test */
            timeCnt = 0;
            if (levelTime == 0x0000) {		/* too long a wait */
               deadAnim();			/* show mario die */
               dead = TRUE;
               }
            }
         } while (!dead);
      }
   --lives;
   DeleteAllObjects();			/* remove any sprites */
   dead=FALSE;
   }
printf("%d frames\n",COUNTER);
DisposeAll(userid());		/* get rid of any memory we used */ 
MarioShutDown();		        /* exit from the game */
}

#append "mario.asm"
