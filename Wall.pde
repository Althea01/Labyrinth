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
    if (abs(500+box.Bx-wallx)<100 && abs(300+box.By-wally)<100 && abs(300+box.Bz-wallz)<100){
      a = sqrt(sq(500+box.Bx-wallx)+sq(300+box.By-wally)+sq(300+box.Bz-wallz));
      alpha = int(map(a, 25, 100, 255, 0));
    } else {
      alpha = 0;
    }
    fill(255,255,255,alpha);
    box(25, 25,25);
    popMatrix();
    if (500+box.Bx == wallx && 300+box.By == wally && (300+box.Bz == wallz)){
      x = 0;
      y = 0;
      z = 0;
    }
    
  }
}

