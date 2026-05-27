void gameover() { 
  theme.pause(); 
  textSize(200); 
  fill(255, 0, 0); 
  if (leftscore == 3) {
  text("RIGHT", 150, 300);
  text("WIN", 220, 500);
  }
  fill(0, 255, 0);
  if (rightscore == 3) {
  text("RIGHT", 150, 300);
  text("WIN", 220, 500);
  }
}

void gameoverClicks () {
  mode = INTRO; 
  theme.rewind(); 
  reset(); 
  mode = INTRO; 
  
}
