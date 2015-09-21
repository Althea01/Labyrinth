class Wall {
  float x, y, z, a, alpha;
  
  Wall() {
    // These marks the three length of the main box
    x = 0.0;
    y = 0.0;
    z = 0.0;
    
  }

  void display(float wallx, float wally, float wallz) {
    // The three variables are the length of main box
    pushMatrix();
    translate(wallx, wally, wallz);
    if (abs(wallx)<50 && abs(wally)<50 && abs(wallz)<50){
      a = sqrt(sq(wallx)+sq(wally)+sq(wallz));
//      alpha = int(map(a, 25, 50, 255, 0));
      alpha = 255;
    } else {
      alpha = 0;
    }
    fill(255,255,255,alpha);
    box(25, 25,25);
    popMatrix();
    if (0 == wallx && 0 == wally && (0 == wallz)){
      x = 0;
      y = 0;
      z = 0;
    }
    
  }
}

