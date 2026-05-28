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
  circle( x[0], y[0], 100);
  circle( x[1], y[1], 100);
  circle( x[2], y[2], 100);
}


void gameClicks() {
  
}
