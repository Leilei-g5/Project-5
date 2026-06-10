void intro () { 
theme.play();
image(gif[f], 0, 0, width, height);
fill(0); 
text("Breakout!", 170, 520);
fill(255);
textSize(100);
text("Breakout!", 180, 520);
println(frameCount);
//modulus of mod
if (frameCount % 1 == 0) f = f + 1;
if (f == numberOfFrames) f = 0; 
}


void introClicks () {
  mode = GAME; 
}
