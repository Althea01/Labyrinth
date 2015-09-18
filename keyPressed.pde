void keyPressed() {
  
  
  if (keyCode == 'A')
  {
    box.Bx -= 25;
    state += 1;
  } else if (keyCode == 'D')
  {
    box.Bx += 25;
    state += 1;

  } else if (keyCode == 'W')
  {
    box.By -= 25;
    state += 1;    
  } else if (keyCode == 'S')
  {
    box.By += 25;
    state += 1;    
  } else if (keyCode == 'Q')
  {
    box.Bz -= 25;
    state += 1;    
  } else if (keyCode == 'E')
  {
    box.Bz += 25;
    state += 1;    
  } 
}

