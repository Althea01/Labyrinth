Box box;
Wall wall;

void setup(){
  size(640, 480, P3D);
  box = new Box();
  wall = new Wall();
}

void draw(){
  background(0);
  translate(width/2, height/2, -width/2);
  rotateX(map(mouseY, 0, height, PI, -PI));
  rotateY(map(mouseX, 0, width, -PI, PI));
  pushMatrix();
  translate(box.Bx, box.By, box.Bz);
  box.display(50, 50, 50);
  popMatrix();
  
  
  for(int i = 0; i < 25; i ++)
  {
    for (int j = 0; j < 25; j ++)
    {
      for (int k = 0; k < 25; k ++)
      {
        wall.display(wall.x*i,wall.y*j,wall.z*k);
      }
      
    }
  }
  
  }


