void reset() {
  //ball 
  bx = width/2;
  by = height - 200;
  bd = 10;
  px = width/2;
  py = height;
  pd = 100;
  vx = 0;
  vy = 1;
  
  //set up array of bricks
  brickd = 50;
  n = 32;
  x = new int[n];
  y = new int[n];
  alive = new boolean[n];
  tempx = 100;
  tempy = 100;
  int i=0;
  while (i<n) {
    x[i] = tempx;
    y[i] = tempy;
    alive[i] = true;
    tempx = tempx + 100;
    if (tempx == width) {
      tempx = 100;
      tempy = tempy + 100;
    }
    i=i+1;
  }

  //game initialization 
  score = 0; 
  lives = 3; 
}

  
