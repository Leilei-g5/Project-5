  
  color yellow        =  #FBE8BE; 
  color orange        =  #F7D19C; 
  color pink          =  #F7AB9C; 
  color SelectedColor = pink;
  float sliderY = 400; 
  float circleSize = 100;
  
  
void options() { 
  theme.play();
  background(255);
  fill(255);
  strokeWeight(1); 
  fill(0); 
  textSize(72); 
  text("OPTIONS", 400, 170);
  //ok
  tactileRect(530, 450, 120, 100);
  noFill();
  rect(600, 500, 100, 100);
  text("OK", 600, 500);
  
  //buttons
  //yellow
  tactile (200, 300, 50); 
  fill (yellow); 
  circle(200, 300, 100);
  
  //orange
  tactile (400, 300, 50); 
  fill(orange); 
  circle(400, 300, 100); 
  
  //pink
  tactile (600, 300, 50); 
  fill(pink); 
  circle(600, 300, 100); 
  
  //slider
  stroke(0);
  line(200, 400, 200, 600);
  fill(255);
  stroke(0);
  circle(200, sliderY, 30);
  circleSize = map(sliderY, 400, 600, 10, 255);
  
  //indicator
  stroke(0);
  fill(SelectedColor); 
  circle (400, 500, circleSize);
  
}
void optionsClicks() {
  // yellow button
  if (dist(200, 300, mouseX, mouseY) < 50) {
  SelectedColor = yellow; 
  }
   // orange button
  if (dist(400, 300, mouseX, mouseY) < 50) {
  SelectedColor = orange; 
  }
   // pink button
  if (dist(600, 300, mouseX, mouseY) < 50) {
  SelectedColor = pink; 
  }
  if (mouseX> 550 && mouseX < 650 && mouseY > 450 && mouseY < 550) {
  mode = INTRO;
  }
  
} 

// tactile function
void tactile (int x, int y, int r) {
if (dist(x, y, mouseX, mouseY) < r) {
  stroke(0); 
    } else {
  stroke(255);
    }
} // end tactile

//slider
 void controlSlider() {
if (mouseX > 175 && mouseX < 225 && mouseY > 400 && mouseY < 600) { 
    sliderY = mouseY;
  // size
   circleSize = map(sliderY, 400, 600, 10, 255); 
  }

} 

void mouseDragged() {
  if (mode == OPTIONS) {
    controlSlider();
  }
}
