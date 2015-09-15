class Wall{
  // These marks the three length of the main box
  float x = 25.0;
  float y = 25.0;
  float z = 25.0;
 
  
  void display(float wallx, float wally, float wallz){
    // The three variables are the length of main box
    pushMatrix();
    translate(wallx, wally, wallz);
    box(x, y, z);
    popMatrix();

  } 
}

