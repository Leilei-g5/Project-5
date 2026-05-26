void game () {
  background(0);
  
  //paddles 
  stroke(255);
  fill(255, 100, 100);
  circle(leftx, lefty, leftd); 
  fill(48, 240, 117); 
  circle(rightx, righty, rightd);
  
  //center line 
  strokeWeight(5); 
  stroke(255); 
  line(width/2, 0, width/2, height);
  
  //scoreboard 
  textSize(50); 
  fill(255, 100, 100); 
  text(leftscore, width/4, 100); 
  fill(48, 240, 117); 
  text(rightscore, 3*width/4, 100);
  fill(48, 240, 117); 
  text(timer, 3*width/4, 550);
  fill(255, 100, 100);
  text(timer, width/4, 550);
  timer = timer - 1;
  
  
  //move paddles 
  if (wkey == true) lefty = lefty - 5; 
  if (skey == true) lefty = lefty + 5;
  
  if (AI == false) {
    if (upkey == true) righty = righty -5; 
    if (downkey == true) righty = righty + 5;
  } else { 
    if (ballx > width/2) { 
      
      if (bally < righty) {
        righty = righty -5; 
      }
      
      if (bally > righty) { 
        righty = righty + 5;
      }   
    }
  }
  
  //ball
  circle(ballx, bally, balld);
  
  //move ball 
  if ( timer < 0) {
  ballx = ballx + vx; 
  bally = bally + vy;
  }
  //scoring 
  if (ballx < -100) { 
    rightscore++; 
    ballx = width/2; 
    bally = height/2;
    timer = 100; 
  }
  if (ballx > 900) { 
    leftscore++; 
    ballx = width/2; 
    bally = height/2; 
    timer = 100;
  }
    
  
  //bouncing 
  if (bally <= balld/2 || bally >= height-balld/2) { 
    vy = vy * -1; 
  } 
  if (dist(ballx, bally, rightx, righty) < balld/2 + rightd/2) { 
    vx = (ballx - rightx)/10; 
    vy = (bally - righty)/10; 
  }
  if (dist(ballx, bally, leftx, lefty) < balld/2 + leftd/2) { 
    vx = (ballx - leftx)/10; 
    vy = (bally - lefty)/10;
  }
  //paddle 
  
}

void gameClicks () {
  if (dist(mouseX, mouseY, 100, 100) < 50) { 
    mode = PAUSE;
}
}
