Box box;
Wall wall;

void setup(){
  size(1000, 600, P3D);
  box = new Box();
  wall = new Wall();
}

void draw(){
  background(0);
  translate(width/2, height/2, -width/2);
  rotateY(map(mouseX, 0, width, -PI, PI));
  pushMatrix();
  translate(-300+box.Bx, -275+box.By, -250+box.Bz);
  box.display(50, 50, 50);
  popMatrix();
  
  // This draws the maze
  for(int i = 0; i < 25; i ++)
  {
    for(int j = 0; j < 25; j++)
    {
      wall.display(-300+wall.x*i,-300+wall.y*j,-300+wall.z);
    }
  }
  
}


