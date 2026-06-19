void game () { 
theme.play();
background(80, 203, 145);
noStroke();
//ground
fill(255); 
rect(0, 245, 1000, 310);
fill(12, 58, 98);
rect(0, 275, 1000, 250);

//triangle/goal
strokeWeight(3);
stroke(0);
fill(255, 227, 13);
triangle(500, centery-20, 450, centery, 500, centery+20);
triangle(500, centery-20, 550, centery, 500, centery+20);

//rope
fill(255, 161, 8);
rect(490, centery-250, 20, 500);

//score 
fill(255); 
circle(0, 400, 100);
fill(255);

//exit
circle(1000, 400, 100);
fill(0);
textSize(18);
text ("Exit", 960, 410);

// blue circle representing player 1 
fill(64, 196, 255);
circle(500, centery-250, 100);
// red circle representing player 2
fill(255, 41, 41); 
circle(500, centery+250, 100);

//scoreboard 
textSize(25);
fill(64, 196, 255); 
text(bluescore, 10, 385);
fill(255, 41, 41); 
text(redscore, 10, 430);
fill(0); 
text(".", 15, 404);

//move paddles 
  if (downkey == true) centery = centery + 5; 
  if (wkey == true) centery = centery - 5;


//scoring 
  if (centery >= 525) { 
    success.rewind();
    success.play();
    redscore++; 
    centery = 400;
    if (redscore == 3) mode = GAMEOVER;
} 
   if (centery <= 235) {
     success.rewind();
     success.play();
     bluescore++; 
     centery=400; 
   if (bluescore == 3) mode = GAMEOVER;
   }
 }

  

void gameClicks () { 
  mode = PAUSE; 
  
  if (dist(mouseX, mouseY, 1000, 400) < 50) { 
    exit(); 
  }
}
