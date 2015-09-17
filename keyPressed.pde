void keyPressed() {
  
  
  if (keyCode == 'A')
  {
    box.Bx -= xSpeed;
    xSpeed -= xAcel;
    xAcel += 0.01;
  } else if (keyCode == 'D')
  {
    box.Bx += 5;
    xSpeed += xAcel;
    xAcel -= 0.01;
  } else if (keyCode == 'W')
  {
    box.By -= 5;
    ySpeed -= yAcel;
    yAcel += 0.01;
  } else if (keyCode == 'S')
  {
    box.By += 5;
    ySpeed += yAcel;
    yAcel -= 0.01;
  } else if (keyCode == 'Q')
  {
    box.Bz += 5;
    zSpeed += zAcel;
    zAcel -= 0.01;
  } else if (keyCode == 'E')
  {
    box.Bz -= 5;
    zSpeed -= zAcel;
    zAcel += 0.01;
  }
}

