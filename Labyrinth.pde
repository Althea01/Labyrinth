Box box;

void setup(){
  size(640, 480, P3D);
  box = new Box();
}

void draw(){
  background(0);
  translate(width/2, height/2, -width/2);
  pushMatrix();
  translate(box.tx, box.ty, box.tz);
  rotateX(map(mouseY, 0, height, PI, -PI));
  rotateY(map(mouseX, 0, width, -PI, PI));
  box.display(50, 50, 50);
  popMatrix();
}


