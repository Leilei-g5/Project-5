void intro() { 
  theme.play();
  background (198, 155, 126); 
  //Pong 
  fill(255, 0, 0); 
  textSize(180);
  text( "PONG", 200, 250);
  // 1 person button
  tactileRect(90, 380, 220, 100);
  noFill();
  rect(90, 380, 220, 100);
  fill(0); 
  textSize(60);
  text( "1 Player", 100, 450);
  // 2 person button 
  tactileRect(490, 380, 220, 100);
  noFill(); 
  rect(490, 380, 220, 100);
  fill(0); 
  textSize(60);
  text( "2 Player", 500, 450);
}
void tactileRect(int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h) {
    stroke(255,0,0);
  } else {
    stroke(0);
  }
}
  boolean clickedOnRect(int x, int y, int w, int h) { 
    return mouseX > x  && mouseX < x + w && mouseY > y && mouseY < y + h; 
  }

void introClicks () {
// 1 player 
if (clickedOnRect(90, 380, 220, 100)) { 
  mode = GAME; 
  theme.pause(); 
  theme.rewind(); 
  AI = true; 
}
//2 player 
if (clickedOnRect(490, 380, 220, 100)) { 
  mode = GAME; 
  theme.pause(); 
  theme.rewind();
  AI = false; 
} 
}
