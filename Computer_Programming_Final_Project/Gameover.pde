void gameover () {
  success.play();
  textSize(150); 
  fill(0); 
  if (bluescore == 3) {
  background(64, 196, 255);
  text("BLUE WIN", 180, 440);
  }
  fill(0);
  if (redscore == 3) {
  background(255, 41, 41);
  text("RED WIN", 190, 440);
} 
}

void gameoverClicks () { 
  theme.rewind();
  mode = INTRO;
  reset(); 
}
