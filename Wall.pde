class Wall {
  float x, y, z, a, alpha;

  Wall() {
    // These marks the three length of the main box
    x = 25.0;
    y = 25.0;
    z = 25.0;
    
  }

  void display(float wallx, float wally, float wallz, int alpha) {
    // The three variables are the length of main box
    pushMatrix();
    translate(wallx, wally, wallz);
    fill(255, 255, 255, alpha);
    box(x, y, z);
    popMatrix();
  }
}

