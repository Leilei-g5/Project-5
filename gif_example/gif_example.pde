

PImage[] gif;
int numberOfFrames;
int f;


void setup () { 
  size(800,800);
  numberOfFrames = 30;
  gif = new PImage [numberOfFrames];
  
  int i = 0;
  while (i < numberOfFrames) { 
    gif[i] = loadImage("frame_"+i+"_delay-0.03s.gif");
    i++; 
  }
  
}

void draw () { 
  image(gif[f], 0, 0, width, height);
  println(frameCount);
  //modulus of mod
  if (frameCount % 1 == 0) f = f + 1;
  if (f == numberOfFrames) f = 0; 
} 
