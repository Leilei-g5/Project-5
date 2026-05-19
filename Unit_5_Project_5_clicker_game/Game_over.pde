void gameover() { 
  background(255, 0, 0);
  fill(0);
  text("GAME OVER", 400, 300);
  text("Highscore: " + highscore, width/2, 400);
  noFill();
  rect(600, 600, 150, 150);
  //exit
  tactileRect(510, 520, 170, 150);
  fill(0);
  text("Exit", 600, 600);
  theme.pause();
  failure.play();
}

void gameoverClicks() { 
  if(mouseX > 510 && mouseX < 680 && mouseY > 520 && mouseY < 670) {
    exit();
  } 
  mode = INTRO;
  theme.rewind();
  reset();
  mode = INTRO;
 
}
