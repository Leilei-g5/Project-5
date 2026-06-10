void pause() { 
theme.play();
image(gif[f], 0, 0, width, height);
textSize(100);
fill(0); 
text("Pause!", 250, 520);
fill(255);
textSize(100);
text("Pause!", 260, 520);
textSize(50);
fill(0);
text("<click to resume", 215, 700);
fill(255);
text("<click to resume", 222, 700);
println(frameCount);
//modulus of mod
if (frameCount % 1 == 0) f = f + 1;
if (f == numberOfFrames) f = 0;
}

void pauseClicks() {
  mode = GAME;
}
