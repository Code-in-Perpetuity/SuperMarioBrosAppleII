#pragma keep "o:static"

#include "mario.h"

extern void AddActiveObject(ObjectRecPtr);
extern int playerState;
extern long Score;		/* player's score */

segment "OBJPROCS";             /* new segment */

/******************************************************************
*
* DoMultiCoin
*
* the player has run into a multi-coin brick, we need to delete the
* brick and create a multi-block sprite.
*
*******************************************************************/

void DoMultiCoin(int x, int y)

{
ObjectRec newObject;

SetLevelItem(x,y,0x00);	  	/* delete the old block */
DrawShape(Xoffset+(x*HInterval)-GetBgndPnt(),Yoffset+(y*VInterval),Background);

newObject.Xpos = (x*HInterval)-GetBgndPnt();   
newObject.Ypos = y*VInterval;
newObject.XVel = 0;
newObject.YVel = -2;
newObject.ID = RMultiBnc;		/* add this shape in */
newObject.other = 0;
AddActiveObject(&newObject); 	
newObject.Ypos -= VInterval;
newObject.YVel = -7;			/* pop the coin */
newObject.ID = Coin1;
newObject.other = 0;
AddActiveObject(&newObject);		/* add in the shape */
Score = AddBCD(Score,0x200);
}

/******************************************************************
*
* DoSingleCoin
*
* the player has run into a coin brick, we need to delete the brick
* and score it.
*
*******************************************************************/

void DoSingleCoin(int x, int y)

{
ObjectRec newObject;

SetLevelItem(x,y,0x80);	  	/* change it to a solid empty block */
DrawShape(Xoffset+(x*HInterval)-GetBgndPnt(),Yoffset+(y*VInterval),Background);

newObject.Xpos = (x*HInterval)-GetBgndPnt();   
newObject.Ypos = y*VInterval;
newObject.XVel = 0;
newObject.YVel = -2;
newObject.ID = QBlockBnc;		/* add this shape in */
newObject.other = redMetal;		/* this is what it becomes */
AddActiveObject(&newObject); 	
newObject.Ypos -= VInterval;
newObject.YVel = -7;			/* pop the coin */
newObject.ID = Coin1;
newObject.other = 0;
AddActiveObject(&newObject);		/* add in the shape */
Score = AddBCD(Score,0x200);
}

/******************************************************************
*
* BreakBrick
*
* if the player has hit a breakable brick from underneath
*
*******************************************************************/

void BreakBrick(int x, int y)

{
ObjectRec newObject;

if (isBig()) {		/* is player Big */
   DeleteLevelItem(x,y);	 	/* delete the brick */
   DrawShape(Xoffset+(x*HInterval)-GetBgndPnt(),Yoffset+(y*VInterval),Background);
   Score=AddBCD(Score,0x50);		/* increase the score */
   newObject.Xpos = (x*HInterval)-GetBgndPnt();   
   newObject.Ypos = y*VInterval;
   newObject.XVel = -1;
   newObject.YVel = -9;
   newObject.ID = redBrickPiece;
   newObject.other = 0;       
   AddActiveObject(&newObject); 	
   newObject.Xpos += 4;
   newObject.XVel = 1;
   AddActiveObject(&newObject); 
   newObject.YVel = -4;
   newObject.Ypos += 6;
   AddActiveObject(&newObject);	
   newObject.Xpos -= 5;
   newObject.XVel = -1;
   AddActiveObject(&newObject);
   }
else {  				/* make the brick 'bounce' up */
   SetLevelItem(x,y,0x80);	  	/* change it to a solid empty block */
   DrawShape(Xoffset+(x*HInterval)-GetBgndPnt(),Yoffset+(y*VInterval),Background);
   newObject.Xpos = (x*HInterval)-GetBgndPnt();   
   newObject.Ypos = y*VInterval;
   newObject.XVel = 0;
   newObject.YVel = -2;
   newObject.ID = RBrickBnc;		/* add this shape in */
   newObject.other = redBrick;		/* this is what it becomes */
   AddActiveObject(&newObject); 	
   }
}

/******************************************************************
*
* PowerStar
*
* if the player has hit a powerstar brick from underneath, this releases
* the star.
*
*******************************************************************/

void PowerStar(int x, int y)

{
ObjectRec newObject;

SetLevelItem(x,y,0x80);	  	/* change it to a solid empty block */
DrawShape(Xoffset+(x*HInterval)-GetBgndPnt(),Yoffset+(y*VInterval),Background);

newObject.Xpos = (x*HInterval)-GetBgndPnt();   
newObject.Ypos = y*VInterval;
newObject.XVel = 0;
newObject.YVel = -2;
newObject.ID = QBlockBnc;		/* add this shape in */
newObject.other = PowerStar1; 		/* this is what it becomes */
AddActiveObject(&newObject); 	
}					

/******************************************************************
*
* DoOneUp
*
* if the player has hit a OneUp brick from underneath, this releases
* the shroom.
*
*******************************************************************/

void DoOneUp(int x, int y)

{
ObjectRec newObject;

SetLevelItem(x,y,0x80);	  	/* change it to a solid empty block */
DrawShape(Xoffset+(x*HInterval)-GetBgndPnt(),Yoffset+(y*VInterval),Background);

newObject.Xpos = (x*HInterval)-GetBgndPnt();   
newObject.Ypos = y*VInterval;
newObject.XVel = 0;
newObject.YVel = -2;
newObject.ID = QBlockBnc;		/* add this shape in */
newObject.other = OneUp; 		/* this is what it becomes */
AddActiveObject(&newObject); 	
}					

/******************************************************************
*
* PowerUp
*
* if the player has hit a powerup brick from underneath, this releases
* the power up.
*
*******************************************************************/

void PowerUp(int x, int y)

{
ObjectRec newObject;

SetLevelItem(x,y,0x80);	  	/* change it to a solid empty block */
DrawShape(Xoffset+(x*HInterval)-GetBgndPnt(),Yoffset+(y*VInterval),Background);

newObject.Xpos = (x*HInterval)-GetBgndPnt();   
newObject.Ypos = y*VInterval;
newObject.XVel = 0;
newObject.YVel = -2;
newObject.ID = QBlockBnc;		/* add this shape in */
newObject.other = (isBig())?fireFlower1:mushroom; /* this is what it becomes */
AddActiveObject(&newObject); 	
}					
