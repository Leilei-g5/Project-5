
//Leilei Gu 
//Unit 5 
// May 6th 


import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;



//MODE VARIABLES
int mode; 
final int INTRO    = 0;
final int GAME     = 1; 
final int PAUSE    = 2;
final int GAMEOVER = 3;
final int OPTIONS  = 4;

// TARGET VARIABLES--------------------------------------------
float x, y, d;
float vx, vy; //target velocity 
int score, lives; 

// COLOR PALLETTE---------------------------------------------



// sound variables--------------------------------------------------
Minim minim; 
AudioPlayer theme, success, failure;

//setup
void setup() { 
  size(800, 800);
  textAlign(CENTER, CENTER); 
  rectMode(CENTER);
  
  
  mode = INTRO;
  
  
  //target initialization 
  x = width/2; 
  y = height/2; 
  d = 100;
  vx = random(-5, 5); 
  vy = random(-5, 5); 
  score = 0;
  lives = 3;
  
  //minim 
  minim = new Minim(this); 
  theme = minim.loadFile("MUSIC.mp3 game audio.mp3");
  success = minim.loadFile("SUCCESS.wav audio.wav");
  failure = minim.loadFile("Failure audio.wav");
}

//draw function
void draw() { 
  if (mode == INTRO) { 
    intro();
  } else if (mode == GAME) { 
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else if (mode == OPTIONS) { 
    options ();
  } else {
    println("Error: Mode = " + mode);
  }
}
