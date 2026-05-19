void intro() { 
  theme.play();
  background(255);
  //start button
  tactileRect(100, 500, 200, 150);
  fill(255);
  rect(200, 600, 200, 100);
  //option button
  tactileRect(470, 500, 260, 150);
  fill(255);
  rect(600, 600, 250, 100);
  
  strokeWeight(1); 
  fill(0); 
  textSize(72); 
  text("CLIKER GAME", 400, 300); 
  text("Start", 200, 600);
  text("Options", 600, 600);
}

void tactileRect(int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h) {
    stroke(255,0,0);
  } else {
    stroke(0);
  }
}

void introClicks() { 
  if (mouseX> 100 && mouseX < 300 && mouseY > 550 && mouseY < 650) {
  mode = GAME;
  }
  if (mouseX> 500 && mouseX < 700 && mouseY > 550 && mouseY < 650) {
  mode = OPTIONS;
  }
}
