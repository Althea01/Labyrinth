void keyPressed(){  
  
  if (keyCode == 'A')
  {
    wall.x += 25;
  } else if (keyCode == 'D')
  {
    wall.x -= 25;
    

  } else if (keyCode == 'W')
  {
    wall.y += 25;
        
  } else if (keyCode == 'S')
  {
    wall.y -= 25;
        
  } else if (keyCode == 'Q')
  {
    wall.z += 25;
        
  } else if (keyCode == 'E')
  {
    wall.z -= 25;
        
  } 
}

