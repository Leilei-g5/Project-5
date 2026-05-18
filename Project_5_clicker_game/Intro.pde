void intro() { 
  theme.play();
  background(255);
  fill(255);
  rect(200, 600, 200, 100);
  rect(600, 600, 250, 100);
  
  strokeWeight(1); 
  fill(0); 
  textSize(72); 
  text("CLIKER GAME", 400, 300); 
  text("Start", 200, 600);
  text("Options", 600, 600);
}

void introClicks() { 
  if (mouseX> 100 && mouseX < 300 && mouseY > 550 && mouseY < 650) {
  mode = GAME;
  }
  if (mouseX> 500 && mouseX < 700 && mouseY > 550 && mouseY < 650) {
  mode = OPTIONS;
  }
}
