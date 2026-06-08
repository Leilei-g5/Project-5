import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

// Breakout 
// May 28th 
// 2-4
// Leilei Gu

//mode framework
int mode; 
final int INTRO    = 1; 
final int GAME     = 2; 
final int PAUSE    = 3; 
final int GAMEOVER = 4; 

//gif 
PImage[] gif;
int numberOfFrames;
int f;

// intro GUI 
float a; 

//Game entities 
float bx, by, bd, vx, vy, px, py, pd; 
int score, lives; 

//Keyboard variables 
boolean akey, dkey; 

// sound variables--------------------------------------------------
Minim minim;

// Brick Variables 
int [] x; 
int [] y;
boolean [] alive; 
int brickd; 
int n; 
int tempx, tempy; 

//Colour
color red      = #FF4040;
color orange   = #FF8A40;
color yellow   = #F8FF40;
color green    = #40FF68;
color darkblue = #0B1B71;
color pink     = #EA1190;

//set up array of bricks 

void setup() {
  background(0);
  size(900, 900);
  mode = INTRO;
  
  //gif 
  numberOfFrames = 30;
  gif = new PImage [numberOfFrames];
  
  int m = 0;
  while (m < numberOfFrames) { 
  gif[m] = loadImage("frame_"+m+"_delay-0.03s.gif");
  m++; 
  }
  println(gif[0]);
  
  //Word Font 
  PFont myFont= loadFont("Magneto-Bold-48.vlw"); 
  textFont(myFont);
  
  
  //set up paddle and ball 
  bx = width/2;
  by = height - 200; 
  bd = 10; 
  px = width/2; 
  py = height; 
  pd = 100; 
  vx = 0; 
  vy = 1; 
  
  //initialize keyboard vars 
  akey = dkey = false;

  //set up array of bricks 
  brickd = 50;
  n = 32;
  x = new int[n]; 
  y = new int[n];
  alive = new boolean[n]; 
  tempx = 100;
  tempy = 100;
  int i=0; 
  while (i<n) {
    x[i] = tempx;
    y[i] = tempy;
    alive[i] = true;
    tempx = tempx + 100;
    if (tempx == width) { 
      tempx = 100;
      tempy = tempy + 100; 
    }
    i=i+1;
  }
  
} 


void draw () { 
  if (mode == INTRO) { 
    intro();
} else if (mode == GAME) { 
    game();
} else if (mode == PAUSE) { 
    pause();
} else if (mode == GAMEOVER) {
    gameover();
} else { 
  println("Mode error: " + mode); 
}
}
