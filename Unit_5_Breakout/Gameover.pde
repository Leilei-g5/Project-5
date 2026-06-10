void gameover() { 
  image(gif[f], 0, 0, width, height);
  println(frameCount);
  //modulus of mod
  if (frameCount % 1 == 0) f = f + 1;
  if (f == numberOfFrames) f = 0; 
  //score
  if (score == 32) {
   theme.pause();
   success.play();
   fill(213, 255, 142);
   textSize(80);
   text("You Won!", 210, 380); 
   textSize(50);
   text("< Click to Restart", 190, 700);
 }
 if (lives == 0 ) { 
   theme.pause();
   failure.play();
   fill(213, 255, 142);
   textSize(80);
   text("You Lost!", 210, 380); 
   textSize(50);
   text("< Click to Restart", 190, 700);
 }
}

void gameoverClicks() {
  reset();
  mode = GAME;
  theme.rewind();
}
