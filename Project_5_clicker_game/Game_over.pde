void gameover() { 
  background(255, 0, 0);
  text("GAME OVER", 400, 400);
  theme.pause();
  failure.play();
}

void gameoverClicks() { 
  mode = INTRO;
  theme.rewind();
}
