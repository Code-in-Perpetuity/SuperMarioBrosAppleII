/*--- shape defines -------------------------------- */

#ifndef MARIO_H
#define MARIO_H 1

/*--- background shapes ---------------------------- */ 

#define empty		1	/* blank box */
#define redBlock 	2	/* the red brick usually found on the ground */
#define solidRed 	3	/* the block mario can jump on */
#define bushLeft 	4
#define bushCtr 	5
#define bushRgt 	6
#define hillLeft 	7
#define hillCtr 	8
#define hillHCtr 	9	/* the hill with a hole in it */
#define hillRgt 	10
#define hillTop 	11
#define cloudLeft 	12
#define cloudCtr 	13
#define cloudRgt 	14
#define pipeLeft 	15
#define pipeRgt 	16
#define pipeTopLeft 	17
#define pipeTopRgt 	18
#define coinF           19              /* background coin, just sitting */
#define powerQBlk       20              /* powerup in a Q-block */
#define invisOneUp      21              /* invisible 1-up */
#define HPipe1Top       22
#define HPipe1Bot       23
#define HPipe2Top       24
#define HPipe2Bot       25

#define redBrick 	26		/* the common breakable brick */
#define redMetal 	27		/* what redBrick look like after giving up a power-up */
#define blueBlock 	28
#define blueBrick 	29
#define CastleArch 	30
#define CastleTop1 	31
#define CastleTop2 	32
#define solidBlue 	33
#define CastleWinR 	34
#define CastleWinL 	35

#define powerUpBrickR 	37
#define coinBrickR 	38
#define powerUpBrickB 	39
#define coinBrickB 	40
#define CastleSolid	41
#define Coral 		42
#define DungeonBlk 	43
#define FlagPole 	44
#define FlagPoleTop 	45
#define WaterBlk 	46
#define WaterTop 	47
#define Background      48
#define starBrickR      49
#define oneUpBrickR     50
#define BBCase          51      /* Bullet Bill */
#define BBBase          52
#define QBlock          53      /* QBlock with a coin */
#define H2VTop          54
#define H2VBot          55
#define CloudBotL       56
#define CloudBotC       57
#define CloudBotR       58

/* --- foreground shapes -------------------------- */

#define MarBigWalkR1	1
#define MarBigWalkR2	2
#define MarBigWalkR3	3
#define MarBigWalkR4	4
#define MarBigStandR	5
#define MarBigCrouchR	6
#define MarBigWalkL1    7
#define MarBigWalkL2    8
#define MarBigWalkL3    9
#define MarBigWalkL4    10
#define MarBigStandL    11
#define MarBigCrouchL   12
#define MarBigJumpR	13
#define MarBigJumpL	14
#define MarWalkR1	15
#define MarWalkR2	16
#define MarWalkR3	17
#define MarWalkR4	18
#define MarStandR	19
#define MarCrouchR	20
#define MarWalkL1    	21
#define MarWalkL2    	22
#define MarWalkL3   	23
#define MarWalkL4    	24
#define MarStandL   	25
#define MarCrouchL  	26
#define MarJumpR	27
#define MarJumpL	28
#define flag            29      /* the thing on top of the pole */
#define fireFlower1     30
#define fireFlower2     31
#define mushroom        32
#define OneUp           33
#define PowerStar1      34
#define PowerStar2      35
#define redBrickPiece   36
#define fireball1       37
#define fireball2       38
#define fireball3       39
#define fireball4       40
#define explode1        41
#define explode2        42
/* #define coinB           43 */
#define MarSlideR       44
#define MarSlideL       45
#define MarBigSlideR    46
#define MarBigSlideL    47
#define MarBigSwimR1       48
#define MarBigSwimR2       49
#define MarBigSwimR3       50
#define MarBigSwimR4       51
#define MarBigSwimL1       52
#define MarBigSwimL2       53
#define MarBigSwimL3       54
#define MarBigSwimL4       55
#define MarDie          56

#define fifty           57
#define oneHundred      58
#define twoHundred      59
#define fourHundred     60
#define eightHundred    61
#define oneThousand     62
#define twoThousand     63
#define fourThousand    64
#define fiveThousand    65
#define eightThousand   66
#define oneUpTxt        67
#define GoombaR1        68
#define GoombaR2        69
#define GoombaB1        70
#define GoombaB2        71
#define KoopaGL1        72
#define KoopaGL2        73
#define KoopaGR1        74
#define KoopaGR2        75
#define GoombaRFlat     76
#define GoombaBFlat     77
#define PlantG1         78              /* pirahna plant */
#define PlantG2         79
#define ShellG1         80
#define ShellG2         81
#define RMultiBnc       82              /* Multi coin red brick sprite */
#define LakituR         83              /* Lakitu looking right */

#define KoopaTroopGR1   85
#define KoopaTroopGR2   86
#define KoopaTroopGL1   87
#define KoopaTroolGL2   88

#define RBrickBnc       89              /* 'bouncing' brick */
#define QBlockBnc       90              /* 'bouncing' ?-block */
#define Coin1           91              /* frames for the spinning coin */
#define Coin2           92
#define Coin3           93

#define MarClimbR1      94
#define MarClimbR2      95
#define MarBigClimbR1   96
#define MarBigClimbR2   97
#define MarBigClimbL1   98
#define MarBigClimbL2   99
#define MarBigSwimR5    100
#define MarBigSwimR6    101
#define MarBigSwimL5    102
#define MarBigSwimL6    103
#define MarClimbL1      104
#define MarClimbL2      105

/*-- structures ----------------------------------- */

#define maxHorz	152
#define maxVert	186
#define ScreenWidth 16*8                
#define ScreenHeight 13*13
#define Xoffset 16
#define Yoffset 20
#define HInterval 8
#define VInterval 13
#define maxObjects 32
#define TheAnswer 42

typedef struct ContRec {		/* record for the controller */
   int direction;
   int buttonA;
   int buttonB;
   } ContRec;

typedef ContRec* ContRecPtr;  		/* pointer to the record */

typedef struct ObjectRec {
   int ID;				/* the shape number */
   int Xpos;			        /* the shapes X position */
   int Ypos;			        /* the shapes Y position */
   int XVel;			        /* the shapes X velocity */
   int YVel;			        /* the shapes Y velocity */
   int other;				/* for misc stuff like anim stage :) */
   } ObjectRec;

typedef ObjectRec* ObjectRecPtr;	/* pointer to the record */

typedef struct MessageRec {
   int New_Shape;               /* is there a new shape? */
   int X;			/* horizontal */
   int Baseline;	        /* vertical baseline */
   int ID;			/* shape number */
   } MessageRec;

typedef MessageRec* MessageRecPtr;	/* pointer to the message */

#define setRight() 	(playerState&=0xFFFE)
#define setLeft()      	(playerState|=0x0001)
#define setSmall()	(playerState&=0xFFFD)
#define setBig()	(playerState|=0x0002)
#define setNotJump()	(playerState&=0xFFFB)
#define setJump()	(playerState|=0x0004)
#define setStand()	(playerState&=0xFFF7)
#define setCrouch()	(playerState|=0x0008)
#define setNotFirey()   (playerState&=0xFFEF)
#define setFirey()      (playerState|=0x0010)
#define setNoSkid()	(playerState&=0xFFDF)
#define setSkid()	(playerState|=0x0020)
#define setNotInvins()  (playerState&=0xFFBF)
#define setInvins()     (playerState|=0x0040)
#define setNotIntan()   (playerState&=0xFF7F)
#define setIntan()      (playerState|=0x0080)
#define setNotInWater() (playerState&=0xFEFF)
#define setInWater()    (playerState|=0x0100)
#define setNotClimb()   (playerState&=0xFDFF)
#define setClimb()      (playerState|=0x0200)
#define isLeft()	((playerState&0x0001)==0x0001)
#define isBig()		((playerState&0x0002)==0x0002)
#define isJump()	((playerState&0x0004)==0x0004)
#define isCrouch()	((playerState&0x0008)==0x0008)
#define isFirey()       ((playerState&0x0010)==0x0010)
#define isSkid()        ((playerState&0x0020)==0x0020)
#define isInvins()      ((playerState&0x0040)==0x0040)
#define isIntan()       ((playerState&0x0080)==0x0080)
#define isInWater()     ((playerState&0x0100)==0x0100)
#define isClimbing()    ((playerState&0x0200)==0x0200)
/*-- external functions ---------------------------- */

extern pascal void MarioInit(void);
extern pascal void MarioShutDown(void);
extern pascal void InitScreen(void);
extern pascal void SetBgndPnt(int);
extern pascal int GetBgndPnt(void);
extern pascal int GetShiftVal(void);
extern pascal int GetLevelWidth(void);
extern pascal void DrawDisplay(int, int);
extern pascal void DrawQueue(void);
extern pascal void AddShapeToQueue(int, int, int);
extern pascal int GetLevelItem(int, int);
extern pascal void DrawShape(int, int, int);
extern pascal void Shadow_On(void);
extern pascal void Shadow_Off(void);
extern pascal void Wait_For_VBL(void);
extern pascal int Get_VBL(void);
extern pascal ContRecPtr ReadControl(void);
extern pascal void DeleteLevelItem(int, int);
extern pascal void SetLevelItem(int, int, int);

extern pascal Wait_Keypress(void);
extern pascal ScrollR(int);
extern pascal ScrollL(int);
extern pascal DrawDisplayAll(void);
extern pascal InitLevel(char *,int);
extern pascal int GetShapeHeight(int);
extern pascal int GetShapeWidth(int);
extern pascal int DivBy13(int);
extern pascal void ClearScreen(void);
extern pascal void DrawQueue(void);
extern pascal void FillList(int,int,int);
extern pascal void FixBgnd(void);
extern pascal void DrawBkgnd(int,int,int,int);
extern pascal void PrintScore(long);
extern pascal void PrintTime(int);
extern pascal long AddBCD(long,int);
extern pascal void DrawTitle(void);

/* These functions are in mario.asm */
extern pascal int ISLEGAL(int, int, int, int);
extern pascal void CYCLE(void);

#endif
