void game() { 
  background(0, 255, 0);
  theme.play();
  fill(0);
  text("Score: " + score, width/2, 30);
  text("Lives: " + lives, width/2, 100);
  text("Highscore: " + highscore, width/2, 170);
  
  //pause button
  stroke(0); 
  fill(255);
  circle(100, 100, 100); 
  
  
  
  //display
  fill(SelectedColor);
  stroke(0); 
  strokeWeight(5);
  circle(x, y, circleSize);
  
  //moving 
  x = x + vx; 
  y = y + vy; 
  
  //bouncing
  if (x < d/2 || x > width-d/2) { 
    vx = vx * -1; 
  }
  if (y< d/2 || y > height-d/2) {
    vy = vy * -1;
  }
}

void gameClicks() { 
  if ( dist(mouseX, mouseY, x, y) < circleSize/2) {
  score= score +1;
  vx = vx * 1.1; 
  vy = vy * 1.1; 
  success.rewind();
  success.play();
  } else if (dist(mouseX, mouseY, 100, 100) < 50) { 
    mode = PAUSE;
  } else { 
    lives = lives -1; 
    failure.rewind();
    failure.play();
    if (lives == 0) mode = GAMEOVER;
}
    if (score > highscore) { 
      highscore = score; 
    }
    
}
