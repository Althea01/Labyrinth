Box box;
Wall wall;

void setup() {
  size(1000, 600, P3D);
  box = new Box();
  wall = new Wall();

}

void draw() {
  // This redraws the background everytime
  background(0);
  // This enables the canvas to rotate with the mouse
  pushMatrix();
  translate(500+box.Bx, 300+box.By, 300+box.Bz);
  rotateY(map(mouseX, 0, width, -PI, PI));
  rotateX(map(mouseY, 0, height, PI, -PI));
  fill(30,144,255);
  box.display(25, 25, 25);
  popMatrix();
  
  translate(wall.x,wall.y,wall.z);
  rotateY(map(mouseX, 0, width, -PI, PI));
  rotateX(map(mouseY, 0, height, PI, -PI));
  // This draws the maze
  // top layer - 25
  for(int i=-1;i<23;i++){
    for(int k=0;k<24;k++){
      wall.display(500+i*25+wall.x,275+wall.y,300+k*25+wall.z);
    }
  }
  // 24
  for(int k=0;k<24;k++){
    wall.display(475+wall.x,300+wall.y,300+k*25+wall.z);
  }
  for(int k=3;k<24;k++){
    wall.display(500+wall.x,300+wall.y,300+k*25+wall.z);
  }
    wall.display(525+wall.x,300+wall.y,300+wall.z);
    wall.display(525+wall.x,300+wall.y,325+wall.z);
  for(int k=3;k<24;k++){
    wall.display(525+wall.x,300+wall.y,300+k*25+wall.z);
  
  // This draws the maze
}

