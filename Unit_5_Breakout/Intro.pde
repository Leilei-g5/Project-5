void intro () { 
image(gif[f], 0, 0, width, height);
println(frameCount);
//modulus of mod
if (frameCount % 1 == 0) f = f + 1;
if (f == numberOfFrames) f = 0; 
}


void introClicks () {
  mode = GAME; 
}
