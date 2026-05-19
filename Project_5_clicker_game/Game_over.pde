void gameover() { 
  background(255, 0, 0);
  fill(0);
  text("GAME OVER", 400, 300);
  text("Highscore: " + highscore, width/2, 400);
  noFill();
  rect(600, 600, 150, 150);
  //exit
  tactileRect(530, 530, 120, 120);
  fill(0);
  text("Exit", 600, 600);
  theme.pause();
  failure.play();
}

void gameoverClicks() { 
  if(mouseX > 600 && mouseX < 750 && mouseY > 600 && mouseY < 750) {
    exit();
  } 
  mode = INTRO;
  theme.rewind();
  reset();
  mode = INTRO;
 
}
