void pause() { 
  theme.pause();
  fill(255, 0, 0);
  textSize(160);
  text("PAUSED", 140, 350);
}
void pauseClicks () {
    mode = GAME; 
    theme.play();
  }
