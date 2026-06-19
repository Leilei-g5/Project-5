void pause () { 
  theme.pause();
  fill(255, 0, 0);
  textSize(100);
  text("PAUSED", 300, 450);
}

void pauseClicks () {
    theme.play();
    mode = GAME; 
} 
