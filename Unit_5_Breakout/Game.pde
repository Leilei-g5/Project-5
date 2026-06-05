void game () {
  background(darkblue);
  fill(pink);
  textSize(40);
  text("Score: " + score, 50, 730);
  text("Lives: " + lives, 630, 730);
  
  //paddle-------------------------------
  fill(255); 
  circle(px, py, pd); 
  if (akey == true) px = px - 5; 
  if (dkey == true) px = px + 5; 
  
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
  if (bx < bd/2 || bx > width - bd/2) { //bounce off side 
     vx = vx * -1; 
  }
  
  //bricks-----------------------
  int i = 0; 
  while (i < n) {
    if (alive[i] == true) {
    manageBrick(i);
    }
    i++;
  }
}


void gameClicks() {
  mode = PAUSE;
  
}

void manageBrick (int i) {
    if (y[i] == 100) fill(red); 
    if (y[i] == 200) fill(orange); 
    if (y[i] == 300) fill(yellow); 
    if (y[i] == 400) fill(green); 
    circle(x[i], y[i], brickd);
    if (dist(bx, by, x[i], y[i]) < bd/2 + brickd/2) { //brick collisions
    vx = (bx - x[i])/10;
    vy = (by - y[i])/10; 
    alive[i] = false; 
  }
}
