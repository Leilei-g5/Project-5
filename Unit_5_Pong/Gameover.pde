void gameover() { 
  theme.pause(); 
  textSize(200); 
  fill(255, 0, 0); 
  if (leftscore == 3) {
  text("LEFT WINS", 400, 300);
  }
  fill(0, 255, 0);
  if (rightscore == 3) {
  text("RIGHT WINS", 400, 300);
  }
}

void gameoverClicks () {
  
}
