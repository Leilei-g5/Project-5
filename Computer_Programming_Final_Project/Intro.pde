void intro() { 
    theme.play();
    background(80, 203, 145);
    // Tug of War
    fill(207, 252, 208);
    textSize(100);
    text ("Pull The Rope", 120, 400);
    //start buttom 
    tactileRect(380, 500, 240, 130);
    noFill(); 
    rect(380, 500, 240, 130);
    textSize(60);
    fill(0);
    text("Start", 400, 600);
}
    
    void tactileRect(int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h) {
    stroke(255,0,0);
  } else {
    stroke(0);
  }
}
    

void introClicks () {
  if (mouseX > 380 && mouseX < 620 && mouseY > 500 && mouseY < 630) { 
  mode = GAME; 
  }
}
