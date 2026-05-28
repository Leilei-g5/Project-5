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

// intro GUI 
float a; 

//Game entities 
float bx, by, bd, vx, vy, px, py, pd; 

//Keyboard variables 
boolean akey, dkey; 

// sound variables--------------------------------------------------
Minim minim;

// Brick Variables 
int [] x; 
int [] y;

//set up array of bricks 

void setup() {
  background(0);
  size(800, 800);
  mode = INTRO;
  
  //set up paddle and ball 
  bx = width/2;
  by = height - 200; 
  bd = 10; 
  px = width/2; 
  py = height; 
  pd = 100; 
  vx = 0; 
  vy = 1; 

  //set up array of bricks 
  x = new int[3]; 
  y = new int[3]; 
  
  x[0] = 100; 
  y[0] = 100;
  
  x[1] = 400; 
  y[1] = 100; 
  
  x[2] = 700;
  y[2] = 100;
 
 
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
