void gameover() { 
  background(255, 0, 0);
  theme.pause();
  failure.play();
}

void gameoverClicks() { 
  mode = INTRO;
  theme.rewind();
}
