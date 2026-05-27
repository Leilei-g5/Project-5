void intro() { 
  theme.play();
  background (221, 252, 194); 
  //Pong 
  fill(82, 104, 240); 
  textSize(160);
  text( "PONG", 200, 250);
  // 1 person button
  tactileRect(90, 380, 220, 100);
  noFill();
  rect(90, 380, 220, 100);
  fill(0); 
  textSize(50);
  text( "1 Player", 120, 450);
  // 2 person button 
  tactileRect(490, 380, 220, 100);
  noFill(); 
  rect(490, 380, 220, 100);
  fill(0); 
  textSize(50);
  text( "2 Player", 510, 450);
}
void tactileRect(int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h) {
    stroke(255,0,0);
  } else {
    stroke(0);
  }
}

void introClicks () {
// 1 player 
if (mouseX > 90 && mouseX < 310 && mouseY > 380 && mouseY < 480){ 
  mode = GAME; 
  AI = true; 
}
//2 player 
if (mouseX > 490 && mouseX < 610 && mouseY > 380 && mouseY < 480){ 
  mode = GAME; 
  AI = false; 
} 
}
