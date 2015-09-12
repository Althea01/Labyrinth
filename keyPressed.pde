void keyPressed(){
    if (keyCode == 'A')
  {
    box.tx -= 5;
  }
  else if (keyCode == 'D')
  {
    box.tx += 5;
  }
  else if (keyCode == 'W')
  {
    box.ty -= 5;
  }
  else if (keyCode == 'S')
  {
    box.ty += 5;
  }
  else if (keyCode == 'Q')
  {
    box.tz += 5;
  }
  else if (keyCode == 'E')
  {
    box.tz -= 5;
  }
}
