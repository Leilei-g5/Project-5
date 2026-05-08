void intro() { 
  background(255);
  fill(255);
  rect(400, 400, 200, 100);
  
  strokeWeight(1); 
  fill(0); 
  textSize(72); 
  text("CLIKER GAME", 400, 200); 
}

void introClicks() { 
  if (mouseX> 300 && mouseX < 500 && mouseY > 350 && mouseY <450) {
  mode = GAME;
}
}
