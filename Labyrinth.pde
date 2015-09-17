Box box;
Wall wall;
float a;
int alpha;
float xSpeed, ySpeed, zSpeed, xAcel, yAcel, zAcel;

void setup() {
  size(1000, 600, P3D);
  box = new Box();
  wall = new Wall();
  a = sqrt(sq(wall.x-box.Bx)+sq(wall.x-box.Bx)+sq(wall.x-box.Bx));
  alpha = int(map(a, 0, 350, 0, 255));
  xSpeed = 5;
  ySpeed = 5;
  zSpeed = 5;
  xAcel = 0;
  yAcel = 0;
  zAcel = 0;
}

void draw() {
  // This redraws the background everytime
  background(0);
  
  // This enables the canvas to rotate with the mouse
  translate(width/2, height/2, -width/2);
  rotateY(map(mouseX, 0, width, -PI, PI));
  // This enables the box to be displayed
  pushMatrix();
  translate(-300+box.Bx, -275+box.By, -250+box.Bz);
  fill(255);
  box.display(50, 50, 50);
  popMatrix();
  
  //This controls the speed of box
  if (xSpeed > 5)
  {
    xSpeed = 5;
  }
  
  if (xSpeed < -5)
  {
    xSpeed = -5;
  }
  
  if (ySpeed > 5)
  {
    ySpeed = 5;
  }
  if (ySpeed < -5)
  {
    ySpeed = -5;
  }
  if (zSpeed > 5)
  {
    zSpeed = 5;
  }
  if (zSpeed < -5)
  {
    zSpeed = -5;
  }

  // This sees if the box has hit the wall
  box.hit();
  
  // This draws the maze
  
  for (int i = 0; i < 25; i ++)
  {
    for (int j = 0; j < 25; j++)
    {
      a = sqrt(sq(wall.x*i-box.Bx)+sq(wall.y*j-box.By)+sq(wall.z-box.Bz));
      alpha = int(map(a, 0, 350, 255, 0));
      wall.display(-300+wall.x*i, -300+wall.y*j, -300+wall.z, alpha);
      

    }
  }



  // This draws the maze
}

