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

class Box{
  // These marks the three length of the main box
  float x = 50.0;
  float y = 50.0;
  float z = 50.0;
  // These marks the change in position from the center of canvas
  float tx = -300;
  float ty = 0;
  float tz = 0;
  
  void display(float boxx, float boxy, float boxz){
    // The three variables are the length of main box
    boxx = x;
    boxy = y;
    boxz = z;
    box(boxx, boxy, boxz);
  }
 
  

 
  void keyPressed(){
    float xpos, ypos, zpos, xSpeed, ySpeed, zSpeed, xAcel, yAcel, zAcel;
    xpos = 0;
    ypos = 0;
    zpos = 0;
    xSpeed = 5;
    ySpeed = 5;
    zSpeed = 5;
    xAcel = 0;
    yAcel = 0;
    zAcel = 0;
    if (keyCode == LEFT){
      
}
