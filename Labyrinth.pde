Box box;
Wall wall;
float a;
int alpha;
int state;
int b;

void setup() {
  size(1000, 600, P3D);
  box = new Box();
  wall = new Wall();
  a = sqrt(sq(wall.x-box.Bx)+sq(wall.x-box.Bx)+sq(wall.x-box.Bx));
  alpha = int(map(a, 0, 350, 0, 255));
  b = 0;
}

void draw() {
  
  // This redraws the background everytime
  background(0);
  
  // This enables the canvas to rotate with the mouse
  translate(width/2, height/2, -width/2);
  rotateY(map(mouseX, 0, width, -PI, PI));
  // This enables the box to be displayed
  pushMatrix();
  translate(-250+box.Bx, -250+box.By, -200+box.Bz);
  fill(255);
  // This sees if the box has hit the wall
  box.display(50, 50, 50);
  popMatrix();
  
  

  
  
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
  
    for (int i = 0; i < 25; i ++)
  {
    for (int k = 2; k < 24; k++)
    {
      a = sqrt(sq(wall.x*i-box.Bx)+sq(wall.y-box.By)+sq(wall.z*k-box.Bz));
      alpha = int(map(a, 0, 350, 255, 0));
      wall.display(-300+wall.x*i, -325+wall.y, -300+wall.z*k, alpha);
    }
  }
  
  for (int j = 1; j < 25; j ++)
  {
    for (int k = 2; k < 24; k++)
    {
      a = sqrt(sq(wall.x-box.Bx)+sq(wall.y*j-box.By)+sq(wall.z*k-box.Bz));
      alpha = int(map(a, 0, 350, 255, 0));
      wall.display(-325+wall.x, -300+wall.y*j, -300+wall.z*k, alpha);
    }
  }



  // This draws the maze
  state = b;
}

