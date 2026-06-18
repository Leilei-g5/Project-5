void keyPressed() { 
  if (key == 'w'|| key == 'W') wkey = true;
  if (keyCode == DOWN) downkey = true; 
} 

void keyReleased() { 
  if (key == 'w'|| key == 'W') wkey = false; 
  if (keyCode == DOWN) downkey = false; 
}
