class Box{
  // These marks the three length of the main box
  float x = 50.0;
  float y = 50.0;
  float z = 50.0;
  // These marks the change in position from the center of canvas
  float tx = 0;
  float ty = 0;
  float tz = 0;
  
  void display(float boxx, float boxy, float boxz){
    // The three variables are the length of main box
    boxx = x;
    boxy = y;
    boxz = z;
    box(boxx, boxy, boxz);
  }
 


 
  
}

