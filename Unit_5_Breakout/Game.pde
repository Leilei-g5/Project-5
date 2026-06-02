void game () {
  background(0);
  
  //paddle-------------------------------
  fill(255); 
  circle(px, py, pd); 
  if (akey) px = px -5; 
  if (dkey) px = px +5; 
  
  //ball---------------------------------
  fill(255); 
  circle(bx, by, bd); 
  bx = bx + vx; 
  by = by + vy; 
  
  //bouncing
  if (dist(bx, by, px, py) < bd/2 + pd/2) { 
    vx = (bx - px)/10;
    vy = (by - py)/10; 
  }
  if (by < bd/2 || by > height - bd/2) { //bounce off top 
     vy = vy * -1; 
  }
  if (bx < bd/2 || bx > height - bd/2) { //bounce off side 
     vx = vx * -1; 
  }
  
  //bricks-----------------------
  int i=0; 
  while (i<n) {
    circle(x[i], y[i], brickd);
     if (dist(bx, by, x[i], y[i]) < bd/2 + brickd/2) { //brick collisions
    vx = (bx - x[i])/10;
    vy = (by - y[i])/10; 
  }
    i=i+1;
  }
}


void gameClicks() {
  
}
