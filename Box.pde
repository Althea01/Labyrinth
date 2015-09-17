class Box {
  // These marks the three length of the main box
  float x = 25.0;
  float y = 25.0;
  float z = 25.0;
  // These marks the change in position from the center of canvas
  float Bx = 0;
  float By = 0;
  float Bz = 0;

  void display(float boxx, float boxy, float boxz) {
    // The three variables are the length of main box
    boxx = x;
    boxy = y;
    boxz = z;
    box(boxx, boxy, boxz);
  } 

  void hit() {
    if (box.Bx == wall.x+25 && box.By == wall.y && box.Bz == wall.z
      ||box.Bx == wall.x-25 && box.By == wall.y && box.Bz == wall.z)
      {
        xSpeed *= -1;
      }
    if (box.Bx == wall.x && box.By == wall.y+25 && box.Bz == wall.z
      ||box.Bx == wall.x && box.By == wall.y-25 && box.Bz == wall.z)
      {
        ySpeed *= -1;
      }
    if (box.Bx == wall.x && box.By == wall.y && box.Bz == wall.z+25
      ||box.Bx == wall.x && box.By == wall.y && box.Bz == wall.z-25)
      {
        zSpeed *= -1;
      }
  }
}

