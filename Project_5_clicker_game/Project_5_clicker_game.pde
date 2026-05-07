//Leilei Gu 
//Unit 5 
// May 6th 

//MODE VARIABLES
int mode; 
final int INTRO    = 0;
final int GAME     = 1; 
final int PAUSE    = 2;
final int GAMEOVER = 3;

// TARGET VARIABLES--------------------------------------------
float x, y, d;

// COLOR PALLETTE=---------------------------------------------

//setup
void setup() { 
  size(800, 800);
  textAlign(CENTER, CENTER); 
  rectMode(CENTER);
  mode = INTRO;
  
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
  } else {
    println("Error: Mode = " + mode);
  }
}
