void keyPressed(){
    if (keyCode == 'A')
  {
    box.Bx -= 5;
  }
  else if (keyCode == 'D')
  {
    box.Bx += 5;
  }
  else if (keyCode == 'W')
  {
    box.By -= 5;
  }
  else if (keyCode == 'S')
  {
    box.By += 5;
  }
  else if (keyCode == 'Q')
  {
    box.Bz += 5;
  }
  else if (keyCode == 'E')
  {
    box.Bz -= 5;
  }
}
