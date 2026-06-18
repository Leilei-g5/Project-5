import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

// Leilei Gu  2-4
// June 12th 
// Final project

// Tug of War

//mode framework
int mode; 
final int INTRO    = 1; 
final int GAME     = 2; 
final int PAUSE    = 3; 
final int GAMEOVER = 4; 

//scoring 
int bluescore, redscore;
int score;

//entity variable 
float centery;

//keyboard variables 
boolean wkey, downkey;


// sound variables--------------------------------------------------
Minim minim; 
AudioPlayer theme, success;


void setup() { 
  size(1000, 800); 
  mode = INTRO; 
  
  //target initialization
  bluescore = redscore = 0;
  
  //initialize keyboard vars
  wkey = downkey = false;
  
  //initialize 
  centery = 400;
  
  //minim 
  minim = new Minim(this); 
  theme = minim.loadFile("MUSIC.mp3 game audio.mp3");
  success = minim.loadFile("SUCCESS.wav audio.wav");

  //Word Font 
  PFont myFont = loadFont("BerlinSansFBDemi-Bold-48.vlw"); 
  textFont(myFont);
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
