/*
*
* objprocs2.cc
*
* This will be a better structred objproc file
*
*/

#pragma lint -1
#pragma keep "o/objproc"

#include <stdio.h>
#include <stdlib.h>
#include <types.h>
#include "mario.h"	

extern void IncrementFrame(void);
extern void SetColors(int);
extern BOOLEAN IsShapeLegal(int,int,int);
extern int FindShape(void);
extern void AddActiveObject(ObjectRecPtr);
extern void AddActiveObjects(int,int);
extern ObjectRec ObjectArray[];    /* need this to scan for fireballs */
extern void DrawScreen(void);           /* draw a frame */
extern void DoFrame(int,int);
extern void DeleteAllObjects(void);

extern int playerState;
extern int playerX;
extern int baseline;
extern int playerXVel;
extern int playerYVel;
extern int fireballs;
extern int jumping,falling,inAir,jumpState;
extern int dead;
extern long Score;               /* player's score */
extern int COUNTER;
extern int BgndPnt;
extern int levelTime;

segment "OBJPROCS";             /* new segment */

int XVel,YVel,Xpos,Ypos,ID,other;	/* used to simplify things */

/*-- These are the utility routines ------------------------------------*/

/******************************************************************************
*
* HitPlayer
*
* Checks if a shape with id = ID at position Xpos,Ypos intersects with the
* player
*
******************************************************************************/

BOOLEAN HitPlayer(int Xpos, int Ypos, int ID)

{

return ((playerX+GetShapeWidth(FindShape()) > Xpos) &&
    (playerX < Xpos+GetShapeWidth(ID)) &&
    (baseline-(GetShapeHeight(FindShape())-1) < Ypos+GetShapeHeight(ID)) &&
    (baseline > Ypos)); 
}

BOOLEAN HitObject(ObjectRecPtr obj1,ObjectRecPtr obj2)
{

int x1=obj1->Xpos,x2=obj2->Xpos;
int y1=obj1->Ypos,y2=obj2->Ypos;

return ((x1+GetShapeWidth(obj1->ID) > x2) &&
    (x1 < x2+GetShapeWidth(obj2->ID)) &&
    (y1 < y2+GetShapeHeight(obj2->ID)) &&
    (y1+GetShapeHeight(obj1->ID) > y2));
}

/******************************************************************************
*
* ToLocal & FromLocal
*
* Copies all the valiables in an objectRec to local variable for faster
* access and less typeing
*
******************************************************************************/

void ToLocal(ObjectRecPtr o)

{
XVel = o->XVel;
YVel = o->YVel;
Xpos = o->Xpos;
Ypos = o->Ypos;
ID = o->ID;
other = o->other;
}

void FromLocal(ObjectRecPtr o)

{
o->XVel = XVel;
o->YVel = YVel;
o->Xpos = Xpos;
o->Ypos = Ypos;
o->ID = ID;
o->other = other;
}

/******************************************************************************
*
* CheckFire
*
* Takes a shape pointer and an ID.  If theshape has been hit with
* a fireball, the shape is set to ID and other set to 0x100
*
******************************************************************************/

void CheckFire(ObjectRecPtr object, int oID, int points)
{
ObjectRec newObj;
ObjectRecPtr fire;
int i;

if (fireballs != 0) {
   for (i=0;i<maxObjects;++i) {
      fire = &ObjectArray[i];
      if ((fire->ID >= fireball1) && (fire->ID <= fireball4))
         if (HitObject(fire,object)) {
            other = 0x100;              /* we are toasty */
            XVel = (fire->XVel<0)?-1:1;          /* jump in fire's direction */
            YVel = -5;
            Ypos += (GetShapeHeight(ID)-GetShapeHeight(oID));
            ID = oID;
            newObj.other = 0;
            newObj.Xpos = Xpos;
            newObj.Ypos = Ypos;
            newObj.ID = points;	        /* make the points */
            AddActiveObject(&newObj);
            fire->ID = explode1;	/* remove if hit something solid */
            fire->XVel = fire->YVel = 0;
            fire->Xpos -= 4;
            fire->Ypos -= 3;
            fire->other = 0;
            --fireballs;
            }
      }
   }
}

/******************************************************************************
*
* CheckShell
*
* checks to see if an object has been hit with a sliding shell
*
******************************************************************************/

void CheckShell(ObjectRecPtr object, int oID, int points)
{
ObjectRec newObj;
ObjectRecPtr shape;
int i;

for (i=0;i<maxObjects;++i) {
   shape = &ObjectArray[i];
   if ((shape->ID == ShellG1) && (shape->other != 0x100) && (shape->XVel != 0))
      if (HitObject(shape,object)) {
         other = 0x100;              /* we are smacked, same as toasty */
         XVel = (shape->XVel<0)?-1:1;          /* jump in shell's direction */
         YVel = -5;
         Ypos += (GetShapeHeight(ID)-GetShapeHeight(oID));
         ID = oID;
         newObj.other = 0;
         newObj.Xpos = Xpos;
         newObj.Ypos = Ypos;
         newObj.ID = points;	        /* make the points */
         AddActiveObject(&newObj);
         }
   }
}

/******************************************************************************
*
* CheckBrick
*
* checks to see if an object has been hit with a bouncing brick
*
******************************************************************************/

void CheckBrick(ObjectRecPtr object, int oID, int points)
{
ObjectRec newObj;
ObjectRecPtr shape;
int i;

for (i=0;i<maxObjects;++i) {
   shape = &ObjectArray[i];
   if ((shape->ID==RBrickBnc)||(shape->ID==QBlockBnc)) 
      if (HitObject(shape,object)) {
         XVel = (shape->Xpos<Xpos)?1:-1;   /* jump away */
         YVel = -5;
         Ypos += (GetShapeHeight(ID)-GetShapeHeight(oID));
         ID = oID;
         other = 0x200;                 /* signal as bumped */
         if (points != 0) {
            newObj.other = 0;
            newObj.Xpos = Xpos;
            newObj.Ypos = Ypos;
            newObj.ID = points;	        /* make the points */
            AddActiveObject(&newObj);
            }
         }
   }
}

/******************************************************************************
*
* deadAnim
*
* does the animation of mario dying
*
******************************************************************************/

void deadAnim(void)
{
int playY;
int i;
playerYVel = -9;
playY = baseline - (GetShapeHeight(FindShape())-1);

AddActiveObjects(GetBgndPnt(),0);    /* put whatever objects are onscreen */
AddShapeToQueue(playerX,playY,MarDie);  	/* Add mario in */
FillList(playerX,playY,MarDie);	/* setup for erasure */
DoFrame(GetBgndPnt(),0);             /* display it */
                                                   
for (i=0; i<30; ++i)
   Wait_For_VBL();                      /* dramatic pause */
while (playY < ScreenHeight) {
   AddActiveObjects(GetBgndPnt(),0);    /* put whatever objects are onscreen */
   AddShapeToQueue(playerX,playY,MarDie);  	/* Add mario in */
   FillList(playerX,playY,MarDie);	/* setup for erasure */
   DoFrame(GetBgndPnt(),0);             /* display it */
   playY += playerYVel;
   playerYVel++;
   if (playerYVel > 9)
      playerYVel = 9;
   }
}

/******************************************************************************
*
* Splode(int x, int y)
*
* does an explosion at x,y
*
******************************************************************************/

void Splode(int x, int y)
{
int i;

AddShapeToQueue(x,y,explode1);
FillList(x,y,explode1);
DrawQueue();
Shadow_On();
ScrollR(0);		/* make consistent */
Shadow_Off();
FixBgnd();		/* fix everything */
for (i=0;i<15;++i) Wait_For_VBL();
AddShapeToQueue(x,y,explode2);
FillList(x,y,explode2);
DrawQueue();
Shadow_On();
ScrollR(0);		/* make consistent */
Shadow_Off();
FixBgnd();		
for (i=0;i<15;++i) Wait_For_VBL();
Shadow_On();
ScrollR(0);		/* make consistent */
Shadow_Off();
Score = AddBCD(Score, 0x0500);
PrintScore((long) Score);
}

/******************************************************************************
*
* FlagPoleAnim(int Xpos)
*
* does the animation of player going down the flag pole
*
******************************************************************************/

void FlagPoleAnim(int X)
{
int playY,i,shp,playX;

DeleteAllObjects();             /* kill any sprites */

playY = baseline - (GetShapeHeight(FindShape())-1);
playerXVel=0;playerYVel=0;      /* put under our control */
playerX = X;                    /* set player in line with flag pole */
setClimb();                     /* we are climbing */

AddShapeToQueue(X,Ypos,flag);
AddShapeToQueue(X,playY,FindShape());
DrawQueue();

for (i=0;i<8;i+=2) {             /* shift the screen over */
   DrawBkgnd(16,16,0,12);
   Shadow_On();
   ScrollR(2);
   Shadow_Off();
   BgndPnt+=2;
   SetBgndPnt(BgndPnt);
   }

playerX-=8;
while (Ypos < 118) {            /* 10*VInterval */
   AddShapeToQueue(X-8,Ypos,flag);        /* draw the flag */
   AddShapeToQueue(X,132-Ypos,twoHundred);
   FillList(X-8,Ypos,flag);	        /* setup for erasure */
   FillList(X,132-Ypos,twoHundred);
   DrawScreen();                        /* display it */
   Ypos+=2; baseline += 2;
   if (baseline > 129)
        baseline -= 2;
   }

playerX += 7; setLeft();              /* turn around */
AddShapeToQueue(X-8,Ypos,flag);           /* draw the flag */
AddShapeToQueue(X,132-Ypos,twoHundred);
DrawScreen();                       /* display it */
for (i=0; i<15; ++i) Wait_For_VBL();    /* pause */

playerXVel = 1;  setNotClimb(); setNotJump();
playerYVel = 1;

while (baseline < 142) {
   DrawScreen();
   baseline -= playerYVel;              /* hop off the flag pole */
   --playerYVel;
   }
baseline = 142; playerYVel = 0;

setRight();
for (i=0; i<39; ++i) {                  /* move this many pixels */
   if (i&1) IncrementFrame();	        /* make a walking animation */
   DrawScreen();
   }
Shadow_On();
ScrollR(0);                             /* eliminate sprites */
Shadow_Off();
for (i=0; i<30; ++i) Wait_For_VBL();    /* pause */

i = levelTime&0xF;

while (levelTime != 0) {
   Wait_For_VBL();
   levelTime = AddBCD(levelTime,0x9999);
   PrintTime(levelTime);
   Score = AddBCD(Score, 0x0050);
   PrintScore(Score);
   }

switch(i) {
   case 1:  Splode(72,30); break;
   case 3:  Splode(72,30); Splode(40,56); Splode(104,56); break;
   case 6:  Splode(72,30); Splode(40,56); Splode(104,56);
            Splode(72,30); Splode(40,56); Splode(104,56); break;
   }
Wait_Keypress();
}

/******************************************************************************
*
* SmallToBig
*
* Does the small mario -->  Big mario
*
******************************************************************************/

void SmallToBig(void)

{
int i,tmpX,tmpY;

tmpX=playerXVel; tmpY=playerYVel;
playerYVel = 0; playerXVel = 0;

for (i=0;i<=10;++i) {
   if ((i&0x1)==0)
      setBig();
   else
      setSmall();
   DrawScreen();       /* draw it */
   Wait_For_VBL();      /* pauses */
   }

setBig();
playerXVel = tmpX; playerYVel = tmpY;
}

/******************************************************************************
*
* BigToSmall
*
* Does the Big mario -->  small mario
*
******************************************************************************/

void BigToSmall(void)

{
int i,tmpX,tmpY;

tmpX=playerXVel; tmpY=playerYVel;
playerYVel = 0; playerXVel = 0;

setNotFirey();

if (!isBig()) {
   dead=TRUE;
   deadAnim();          /* the cutsy animation */
   }
else {
   for (i=0;i<=10;++i) {
      if ((i&0x1)==0)
         setSmall();
      else
         setBig();
      DrawScreen();       /* draw it */
      Wait_For_VBL();      /* pauses */
      }                                

   setSmall();
   setIntan();             /* player cannot be touched for a while */
   }

playerXVel = tmpX; playerYVel = tmpY;
}

/******************************************************************************
*
* BigToFirey
*
* Does the Big mario -->  Firey mario
*
******************************************************************************/

void BigToFirey(void)

{
int i,tmpX,tmpY;

tmpX=playerXVel; tmpY=playerYVel;
playerYVel = 0; playerXVel = 0;

for (i=0;i<=10;++i) {
   if ((i&0x1)==0)
      SetColors(FALSE);
   else
      SetColors(TRUE);
   DrawScreen();       /* draw it */
   Wait_For_VBL();      /* pauses */
   }                                

setFirey();
playerXVel = tmpX; playerYVel = tmpY;
}

/******************************************************************************
*
* pointsProc
*
* Handles the movements of point numbers (100,400,1000,etc.) and 1UPs
*
******************************************************************************/

void pointsProc(ObjectRecPtr object)

{

ToLocal(object);		/* make things local */

if (other == 0) {
   other = 1;
   XVel = 0;
   YVel = -1;           	/* set initial states */
   }
if (other == 20)
   ID = 0;
else {
   Ypos += YVel;                /* keep count with 'other' field */
   ++other;
   }

FromLocal(object);		/* set the struct */
}

/******************************************************************************
*
* rPieceProc
*
* Handles the movements of the pieces of brick when big mario break one
*
******************************************************************************/

void rPieceProc(ObjectRecPtr object)

{
ToLocal(object);

Xpos += XVel;   	/* real simple, go until gone */
Ypos += YVel;
++YVel;

if ((Xpos < -Xoffset) || (Xpos > ScreenWidth+Xoffset) || (Ypos > ScreenHeight))
   ID = 0;			/* remove it */

FromLocal(object);
}

/******************************************************************************
*
* shellProc
*
* Handles the movements of the turtle shell,
* standing still, moving, or hit by Mario
*
******************************************************************************/

void shellProc(ObjectRecPtr object)
{
ToLocal(object);

if (other == 0x100) {    /* we are toasty */
   Xpos += XVel;   	/* real simple, go until gone */
   Ypos += YVel;
   ++YVel;
   }

else {
   Xpos += XVel;
   if (!IsShapeLegal(Xpos,Ypos,ID)) {
      Xpos -= XVel<<1;
      XVel = -XVel;
      }
   if (IsShapeLegal(Xpos,Ypos+YVel+1,ID)) {
      Ypos+=(YVel+1);
      YVel+=2;
      if (YVel > 7)			/* can't go 8 at a time */
         YVel = 7;
      }
   else {
      YVel = 0;
      while (IsShapeLegal(Xpos,Ypos+1,ID))
         ++Ypos;
      }
   other = Ypos+GetShapeHeight(ID);

   if (HitPlayer(Xpos,Ypos,ID)) {		/* did the player hit me? */
      if (XVel == 0) 				/* we were still */
         XVel =  (playerX > Xpos+4)?-4:4;	/* so start sliding */
      else {
         if (playerYVel > 0) {
            XVel = 0;           		/* did the player jump on us? */
            playerYVel = -5;
            }
         else if (!isIntan() && (((playerX-Xpos)^XVel) < 0x8000)) {
            BigToSmall();               /* make small */
            setNotFirey();
            SetColors(TRUE);
            }
         }
      }
   CheckFire(object,ShellG1,eightHundred);
   }

if ((Xpos < -Xoffset) || (Xpos > ScreenWidth+Xoffset) ||
	(Ypos < 0) || (Ypos > ScreenHeight)) 
   ID = 0;			/* remove it */

FromLocal(object);
}

/******************************************************************************
*
* mushroomProc
*
* Handles the movements of the mushroom.  POWER UP!!
*
******************************************************************************/

void mushroomProc(ObjectRecPtr object)

{
int vert;

ToLocal(object);
vert = GetShapeHeight(FindShape());
					/* handle moving around */
if (other == 0) {
   XVel = 1;
   YVel = 0;
   other = 1;
   }
	
if (!IsShapeLegal(Xpos,Ypos,ID)) 	/* come out of a block */
   --Ypos;
else {
   Xpos += XVel;                        /* hit thing on side */
   if (!IsShapeLegal(Xpos,Ypos,ID)) {
      Xpos -= XVel;
      XVel = -XVel;
      }
   if (IsShapeLegal(Xpos,Ypos+YVel+1,ID)) {       /* fall down */
      Ypos+=(YVel+1);
      YVel += 1;
      if (YVel > 7)			/* can't go 8 at a time */
         YVel = 7;
      }
   else {
      YVel = 0;
      while (IsShapeLegal(Xpos,Ypos+1,ID))
         ++Ypos;
      }
   }

CheckBrick(object,ID,0);

if ((Xpos-7 < playerX) && (Xpos+7 > playerX) &&
	(Ypos-11 < (baseline - (vert/2))) &&
        (Ypos+11 > (baseline - vert))) {
     other = 0;
     if (ID == mushroom) {
        SmallToBig();           /* do the animation */
	ID = oneThousand;       	/* handle power and 1UPs */
        Score = AddBCD(Score,0x1000);
        }
     else
	ID = oneUpTxt;
     Ypos += 6;
     }
if ((Xpos < -Xoffset) || (Xpos > ScreenWidth+Xoffset) ||
	(Ypos < 0) || (Ypos > ScreenHeight)) 
   ID = 0;			/* remove it */

FromLocal(object);
}

/******************************************************************************
*
* fireFlowerProc
*
* Handles the fireflowers, but they just sit
*
******************************************************************************/

void fireFlowerProc(ObjectRecPtr object)

{
int vert;
ToLocal(object);

vert = GetShapeHeight(FindShape());

if (other == 0)	{			/* first time through */
   YVel = -1;
   XVel = 0;
   other = 1;
   }

if ((other & 0xF) == 1) {		/* we're coming out of the block */
   Ypos += YVel;
   if (IsShapeLegal(Xpos,Ypos,ID)) {
      YVel = XVel = 0;				/* no more up */
      other &= 0xFFF0;		/* no longer coming out */
      other += 2;			/* set LSB = 2 */
      }
   }

ID = ((COUNTER&0x2)==0)?fireFlower1:fireFlower2;

if ((Xpos-7 < playerX) && (Xpos+7 > playerX) &&
	(Ypos-11 < (baseline - (vert/2))) &&
        (Ypos+11 > (baseline - vert))) {
   if (isBig()) {
     if (!isFirey()) {
       BigToFirey();
       SetColors(FALSE);
       }
     }
   else {
     SmallToBig();           /* do the animation */
     SetColors(TRUE);
     }
     Score = AddBCD(Score,0x1000);

     ID = oneThousand;
     other = 0;
     Ypos += 6;
     }

if ((Xpos < -Xoffset) || (Xpos > ScreenWidth+Xoffset)
	|| (Ypos<0) || (Ypos > ScreenHeight)) 
   ID = 0;			/* remove it */

FromLocal(object);
}

/******************************************************************************
*
* fireballProc
*
* Handles the fireballs, actually a complex thing
*
******************************************************************************/

void fireballProc(ObjectRecPtr object)

{
ToLocal(object);

Ypos += GetShapeHeight(ID);
++ID;
if (ID > fireball4)
   ID = fireball1;

Ypos -= GetShapeHeight(ID);
if (!IsShapeLegal(Xpos+XVel,Ypos,ID)) {
   while (IsShapeLegal(Xpos,Ypos,ID)) 
      Xpos += (XVel<0)?-1:1;
   ID = explode1;			/* remove if hit something solid */
   XVel = YVel = 0;
   Xpos -= 4;
   Ypos -= 3;
   other = 0;
   --fireballs;
   }

else {
   if (!IsShapeLegal(Xpos+XVel,Ypos+YVel,ID)) {
      YVel = -4;		/* bounce */
      while (IsShapeLegal(Xpos+XVel,Ypos+1,ID))
         ++Ypos;
      }
   ++YVel;				/* keep falling */
   if (YVel > 4)
      YVel = 4;

   Xpos += XVel;
   Ypos += YVel;

   if ((Xpos < -Xoffset) || (Xpos > ScreenWidth)
   	|| (Ypos<0) || (Ypos > ScreenHeight)) {
      ID = 0;			/* remove it */
      --fireballs;
      }
   }

FromLocal(object);
}

/******************************************************************************
*
* explodeProc
*
* Handles the explosion of fireballs, very simple
*
******************************************************************************/

void explodeProc(ObjectRecPtr object)
{
ToLocal(object);

switch (other) {
	case 0: other = 1;	break;
        case 1: other = 2;
	        ID = explode2;	break;
        case 2: ID = 0;		break;
        }
FromLocal(object);
}

/******************************************************************************
*
* starProc
*
* Handles the invinsible starts, lot of bounds checking
* Similar to fireFlowerProc
*
******************************************************************************/

void starProc(ObjectRecPtr object)

{
int vert;
ToLocal(object);
vert = GetShapeHeight(FindShape());
					/* handle moving around */

if (other == 0) {
   XVel = 1;
   YVel = -7;
   other = 1;
   }

if ((other & 0x10) == 0) {
   ID = PowerStar2;
   other |= 0x10;
   }
else {
   ID = PowerStar1;
   other &= 0xFFEF;
   }
	
if (!IsShapeLegal(Xpos,Ypos,ID))
   --Ypos;
else {
   Xpos += XVel;
   if (!IsShapeLegal(Xpos,Ypos,ID)) {
      Xpos -= XVel;
      XVel = -XVel;
      }
   if (IsShapeLegal(Xpos,Ypos+YVel,ID)) {
      Ypos+=YVel;
      ++YVel;
      if (YVel > 7)			/* can't go 8 at a time */
         YVel = 7;
      }
   else {
      YVel = -7;
      while (IsShapeLegal(Xpos,Ypos+1,ID))
         ++Ypos;
      }
   }

if ((Xpos-7 < playerX) && (Xpos+7 > playerX)
	&& (Ypos-11 < (baseline - (vert/2)))
     	&& (Ypos+11 > (baseline - vert))) {
     setInvins();		/* make the player invincible */
     ID = oneThousand;
     other = 0;
     Ypos += 6;
     Score = AddBCD(Score,0x1000);
     }
if ((Xpos < -Xoffset) || (Xpos > ScreenWidth+Xoffset)
	|| (Ypos < 0) || (Ypos > ScreenHeight)) 
   ID = 0;			/* remove it */

FromLocal(object);
}

/******************************************************************************
*
* KoopaProc
*
* Moves a Green KoopaTroopa around
*
******************************************************************************/

void KoopaProc(ObjectRecPtr object)

{
ObjectRec newObj;
ObjectRecPtr fire;
int i;

ToLocal(object);

if (other == 0) {		/* first time through */
   other = Ypos;
   XVel = -1;
   YVel = 0;
   Ypos -= GetShapeHeight(ID);
   }

if (XVel > 0)
   ID = ((COUNTER&0x2)==0)?KoopaGR2:KoopaGR1;
else
   ID = ((COUNTER&0x2)==0)?KoopaGL2:KoopaGL1;
Ypos = other - GetShapeHeight(ID);

Xpos += XVel;
   if (!IsShapeLegal(Xpos,Ypos,ID)) {
      Xpos -= XVel;
      XVel = -XVel;
      }
   if (IsShapeLegal(Xpos,Ypos+YVel+1,ID)) {
      Ypos+=(YVel+1);
      ++YVel;
      if (YVel > 7)			/* can't go 8 at a time */
         YVel = 7;
      }
   else {
      YVel = 0;
      while (IsShapeLegal(Xpos,Ypos+1,ID))
         ++Ypos;
      }
other = Ypos+GetShapeHeight(ID);

if (HitPlayer(Xpos,Ypos,ID)) 
   if (playerYVel > 0) {
      XVel = 0;
      Ypos += (GetShapeHeight(ID)-GetShapeHeight(ShellG1));
      ID = ShellG1;
      other = 0;
      playerYVel = -5;		/* change this later */
      newObj.other = 0;
      newObj.Xpos = Xpos;
      newObj.Ypos = Ypos;
      newObj.ID = eightHundred;	/* make the points */
      AddActiveObject(&newObj);
      }
   else if (!isIntan()) {
      BigToSmall();             /* make mario small */
      setNotFirey();
      SetColors(TRUE);
      }

CheckFire(object,ShellG1,eightHundred);
CheckShell(object,ShellG1,eightHundred);

if ((Xpos < -Xoffset) || (Xpos > ScreenWidth+Xoffset) ||
	(Ypos < 0) || (Ypos > ScreenHeight)) 
   ID = 0;			/* remove it */

FromLocal(object);
}


/******************************************************************************
*
* goomFlatProc
*
* keeps a flattened goomba around for a while
*
******************************************************************************/

void goomFlatProc(ObjectRecPtr object)
{
ToLocal(object);

++other;
if (other > 20) 
   ID = 0;

if ((Xpos < -Xoffset) || (Xpos > ScreenWidth) ||
	(Ypos < 0) || (Ypos > ScreenHeight)) 
   ID = 0;			/* remove it */

FromLocal(object);
}

/******************************************************************************
*
* goombaProc
*
* make those adorable goomba move
*
******************************************************************************/

void goombaProc(ObjectRecPtr object)

{
ObjectRec newObj;
ObjectRecPtr fire;
int i,vert;

ToLocal(object);
vert = GetShapeHeight(FindShape());
					/* handle moving around */
if (other == 0) {		/* first time through */
   other = Ypos;		/* set other to the baseline */
   XVel = -1;
   YVel = 0;
   Ypos -= GetShapeHeight(ID);	/* initially set to the baseline */
   }

if ((other == 0x100) || (other == 0x200)) {
   Xpos += XVel;   	/* real simple, go until gone */
   Ypos += YVel;
   ++YVel;
   }

else {	
   ID = (ID == GoombaR1)?GoombaR2:GoombaR1;
   Ypos = other-GetShapeHeight(ID);

   Xpos += XVel;                        /* hit thing on side */
   if (!IsShapeLegal(Xpos,Ypos,ID)) {
      Xpos -= XVel;
      XVel = -XVel;
      }
   if (IsShapeLegal(Xpos,Ypos+YVel+1,ID)) {       /* fall down */
      Ypos=Ypos+YVel+1;
      YVel = YVel+1;
      if (YVel > 7)			/* can't go 8 at a time */
         YVel = 7;
      }
   else {
      YVel = 0;
      while (IsShapeLegal(Xpos,Ypos+1,ID))
         ++Ypos;
      }
   other = Ypos+GetShapeHeight(ID);
   
   if (HitPlayer(Xpos,Ypos,ID)) 
      if (playerYVel > 0) {
         Ypos += (GetShapeHeight(ID)-GetShapeHeight(GoombaRFlat));
         ID = GoombaRFlat;
         other = 0;
         playerYVel = -5;		/* change this later */
         newObj.other = 0;
         newObj.Xpos = Xpos;
         newObj.Ypos = Ypos;
         newObj.ID = fourHundred;	/* make the points */
         AddActiveObject(&newObj);
         }
      else if (!isIntan()) {
         BigToSmall();             /* make small */
         setNotFirey();
         SetColors(TRUE);
         }

   CheckFire(object,GoombaR1,fourHundred);
   CheckShell(object,GoombaR1,fourHundred);
   CheckBrick(object,GoombaR1,fourHundred);
   }

if ((Xpos+Xoffset < 0) || (Xpos > ScreenWidth+Xoffset) ||
	(Ypos < 0) || (Ypos > ScreenHeight)) 
   ID = 0;			/* remove it */   
FromLocal(object);
}

/******************************************************************************
*
* flagProc
*
* Just to keep the flag in a proper position
*
******************************************************************************/

void flagProc(ObjectRecPtr object)

{
ToLocal(object);		/* handle moving around */

if (other == 0) {		/* first time through */
   other = 1;		        /* set other non-zero */
   XVel = 0;
   YVel = 0;
   Ypos -= GetShapeHeight(ID);	/* initially set to the baseline */
   Xpos -= 4;
   }

if (playerX > Xpos) {           /* player has passed the flag */
   ID = 0;                      /* delete from frame */
   FromLocal(object);
   FlagPoleAnim(Xpos);          /* do the flagpole animation */
   dead=TRUE;
   }
else {
   if ((Xpos < 0) || (Xpos > ScreenWidth+16) ||
	(Ypos < 0) || (Ypos > ScreenHeight)) 
      ID = 0;			/* remove it */

   FromLocal(object);
   }
}
 
/******************************************************************************
*
* bounceProc
*
* Handles the movements of the bricks that are hit,
*
******************************************************************************/
 
void bounceProc(ObjectRecPtr object)

{
ToLocal(object);		/* handle moving around */

if (YVel == 3) {
   if ((other==fireFlower1)||(other==mushroom)||(other==OneUp)||(other==PowerStar1)) {
      DrawShape(Xpos+Xoffset,Ypos+Yoffset,redMetal);  /* set the correct shape */
      SetLevelItem((GetBgndPnt()+Xpos)>>3,DivBy13(Ypos),redMetal|0x80);
      if (other == fireFlower1)
         Ypos -= 3;                     /* adjust 'cause flower is bigger */
      ID = other;
      other = 0;
      }
   else {
      ID = 0;
      DrawShape(Xpos+Xoffset,Ypos+Yoffset,other);  /* set the correct shape */
      SetLevelItem((GetBgndPnt()+Xpos)>>3,DivBy13(Ypos),other|0x80);
      }
   }
else {
   Ypos += YVel;
   ++YVel;
   }
if ((Xpos < 0) || (Xpos > ScreenWidth+16) ||
	(Ypos < 0) || (Ypos > ScreenHeight)) 
   ID = 0;			/* remove it */

FromLocal(object);
}
                      
/******************************************************************************
*
* coinProc
*
* Handles the coin coming out of the ? blocks
*
******************************************************************************/
 
void coinProc(ObjectRecPtr object)

{
ToLocal(object);		/* handle moving around */

if (YVel >= 8) {
   ID = twoHundred;
   other = 0;
   }
else {
   Ypos += YVel;
   ++YVel;
   switch (ID) {
      case Coin1: ID = Coin2; break;
      case Coin2: ID = Coin3; break;
      case Coin3: ID = Coin1; break;
      }
   }
if ((Xpos < 0) || (Xpos > ScreenWidth+16))
   ID = 0;			/* remove it */

FromLocal(object);
}

/******************************************************************************
*
* plantProc
*
* Handles the pirahna plants coming up and down
*
******************************************************************************/
 
void plantProc(ObjectRecPtr object)

{
int base;

ToLocal(object);		/* handle moving around */

if (other == 0)  {
   Ypos += 3;
   Xpos += 4;
   }

base = Ypos + GetShapeHeight(ID);       /* find our base point */
++other;

if (other < 25)
  --base;
else if ((other > 38) && (other < 62))
  ++base;
else if (other > 80)
   other = 1;

ID = ((other&0x4) != 0)?PlantG2:PlantG1;   /* new ID */

Ypos = base - GetShapeHeight(ID);       /* position it */

if ((Xpos < 0) || (Xpos > ScreenWidth+16))
   ID = 0;			/* remove it */

FromLocal(object);
}
 
/******************************************************************************
*
* multiProc
*
* Handles the movements of the bricks that are hit,
*
******************************************************************************/
 
void multiProc(ObjectRecPtr object)

{
ObjectRec newObject;

ToLocal(object);		/* handle moving around */

if (other == 0)
   other = COUNTER;

if (YVel < 3) {
   Ypos += YVel;
   ++YVel;
   }
else {
   if (HitPlayer(Xpos,Ypos,ID) && playerYVel<0) {
      playerYVel = 0; jumping = FALSE; falling = TRUE; jumpState = 0;
      YVel=-2;
      newObject.Xpos = Xpos;
      newObject.XVel = 0;
      newObject.Ypos = Ypos-VInterval;
      newObject.YVel = -7;			/* pop the coin */
      newObject.ID = Coin1;
      newObject.other = 0;
      AddActiveObject(&newObject);		/* add in the shape */
      Score = AddBCD(Score,0x0200);
      }
   }
if ((Xpos < 0) || (Xpos > ScreenWidth+16) ||
	(Ypos < 0) || (Ypos > ScreenHeight)) 
   ID = 0;			/* remove it */

if (COUNTER-other > 100) {
  ID = QBlockBnc;
  other = redMetal;
  }

FromLocal(object);
}
