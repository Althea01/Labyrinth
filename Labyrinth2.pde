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
  translate(500,300,300);
  rotateY(map(mouseX, 0, width, -PI, PI));
//  rotateX(map(mouseY, 0, height, PI, -PI));
  fill(30,144,255);
  box.display(25, 25, 25);

  


  // This draws the maze
  // top layer - 25
  for(int i=-1;i<=23;i++){
    for(int k=0;k<=24;k++){
      wall.display(i*25+wall.x,-25+wall.y,k*25+wall.z);
    }
  }
  // 24-1
  for(int k=0;k<=24;k++){
    wall.display(-25+wall.x,wall.y,k*25+wall.z);
  }
  //24-2
  for(int k=3;k<=24;k++){
    wall.display(wall.x,wall.y,k*25+wall.z);
  }
  //24-3
    wall.display(25+wall.x,wall.y,wall.z);
    wall.display(25+wall.x,wall.y,25+wall.z);
  for(int k=3;k<=24;k++){
    wall.display(25+wall.x,wall.y,k*25+wall.z);
  }
  //24-4
    wall.display(50+wall.x,wall.y,wall.z);
    wall.display(50+wall.x,wall.y,25+wall.z);
    wall.display(50+wall.x,wall.y,25*4+wall.z);
  for(int k=6;k<=24;k++){
    wall.display(50+wall.x,wall.y,k*25+wall.z);
  }
  //24-5
  for(int k=0;k<=4;k++){
    wall.display(25*3+wall.x,wall.y,k*25+wall.z);
  }
  for(int k=6;k<=24;k++){
    wall.display(25*3+wall.x,wall.y,k*25+wall.z);
  }
  //24-6
  for(int k=0;k<=4;k++){
    wall.display(25*4+wall.x,wall.y,k*25+wall.z);
  }
  for(int k=8;k<=4;k++){
    wall.display(25*4+wall.x,wall.y,k*25+wall.z);
  }
  //24-7
  for(int k=0;k<=4;k++){
    wall.display(25*5+wall.x,wall.y,k*25+wall.z);
  }
  for(int k=6;k<=17;k++){
    wall.display(25*5+wall.x,wall.y,k*25+wall.z);
  }
    wall.display(25*5+wall.x,wall.y,24*25+wall.z);
  //24-8
  for(int k=0;k<=4;k++){
    wall.display(25*6+wall.x,wall.y,k*25+wall.z);
  }
  for(int k=6;k<=17;k++){
    wall.display(25*6+wall.x,wall.y,k*25+wall.z);
  }
  for(int k=19;k<=24;k++){
    wall.display(25*5+wall.x,wall.y,k*25+wall.z);
  }
  //24-9
  for(int k=0;k<=4;k++){
    wall.display(25*7+wall.x,wall.y,k*25+wall.z);
  }
  for(int k=6;k<=17;k++){
    wall.display(25*7+wall.x,wall.y,k*25+wall.z);
  }
  for(int k=19;k<=24;k++){
    wall.display(25*7+wall.x,wall.y,k*25+wall.z);
  }
  //24-10
  for(int k=0;k<=4;k++){
    wall.display(25*8+wall.x,wall.y,k*25+wall.z);
  }
  for(int k=6;k<=17;k++){
    wall.display(25*8+wall.x,wall.y,k*25+wall.z);
  }
  for(int k=19;k<=24;k++){
    wall.display(25*8+wall.x,wall.y,k*25+wall.z);
  }
  //24-11
  for(int k=0;k<=2;k++){
    wall.display(25*9+wall.x,wall.y,k*25+wall.z);
  }
  for(int k=14;k<=17;k++){
    wall.display(25*9+wall.x,wall.y,k*25+wall.z);
  }
  for(int k=19;k<=24;k++){
    wall.display(25*9+wall.x,wall.y,k*25+wall.z);
  }
  //24-12
  for(int k=0;k<=2;k++){
    wall.display(25*10+wall.x,wall.y,k*25+wall.z);
  }
  for(int k=4;k<=12;k++){
    wall.display(25*10+wall.x,wall.y,k*25+wall.z);
  }
  for(int k=14;k<=17;k++){
    wall.display(25*10+wall.x,wall.y,k*25+wall.z);
  }
  for(int k=19;k<=24;k++){
    wall.display(25*10+wall.x,wall.y,k*25+wall.z);
  }
  //24-13
    wall.display(25*11+wall.x,wall.y,0*25+wall.z);
  for(int k=4;k<=12;k++){
    wall.display(25*11+wall.x,wall.y,k*25+wall.z);
  }
  for(int k=14;k<=17;k++){
    wall.display(25*11+wall.x,wall.y,k*25+wall.z);
  }
  for(int k=19;k<=24;k++){
    wall.display(25*11+wall.x,wall.y,k*25+wall.z);
  }
  //24-14
  for(int k=0;k<=12;k++){
    wall.display(25*12+wall.x,wall.y,k*25+wall.z);
  }
  for(int k=14;k<=17;k++){
    wall.display(25*12+wall.x,wall.y,k*25+wall.z);
  }
  for(int k=19;k<=24;k++){
    wall.display(25*12+wall.x,wall.y,k*25+wall.z);
  }
  //24-15
  for(int k=0;k<=12;k++){
    wall.display(25*13+wall.x,wall.y,k*25+wall.z);
  }
  for(int k=19;k<=24;k++){
    wall.display(25*13+wall.x,wall.y,k*25+wall.z);
  }
  //24-16
  for(int k=0;k<=12;k++){
    wall.display(25*14+wall.x,wall.y,k*25+wall.z);
  }
  for(int k=14;k<=17;k++){
    wall.display(25*14+wall.x,wall.y,k*25+wall.z);
  }
    wall.display(25*14+wall.x,wall.y,24*25+wall.z);
  //24-17
  for(int k=0;k<=8;k++){
    wall.display(25*15+wall.x,wall.y,k*25+wall.z);
  }
  for(int k=19;k<=24;k++){
    wall.display(25*15+wall.x,wall.y,k*25+wall.z);
  }
  //24-18
  for(int k=0;k<=8;k++){
    wall.display(25*16+wall.x,wall.y,k*25+wall.z);
  }
  for(int k=10;k<=14;k++){
    wall.display(25*16+wall.x,wall.y,k*25+wall.z);
  }
  for(int k=16;k<=24;k++){
    wall.display(25*16+wall.x,wall.y,k*25+wall.z);
  }
  //24-19
  for(int k=0;k<=8;k++){
    wall.display(25*17+wall.x,wall.y,k*25+wall.z);
  }
  for(int k=10;k<=14;k++){
    wall.display(25*17+wall.x,wall.y,k*25+wall.z);
  }
  for(int k=16;k<=24;k++){
    wall.display(25*17+wall.x,wall.y,k*25+wall.z);
  }
  //24-20
  for(int k=0;k<=8;k++){
    wall.display(25*18+wall.x,wall.y,k*25+wall.z);
  }
  for(int k=10;k<=14;k++){
    wall.display(25*18+wall.x,wall.y,k*25+wall.z);
  }
  for(int k=16;k<=24;k++){
    wall.display(25*18+wall.x,wall.y,k*25+wall.z);
  }
  //24-21
  for(int k=0;k<=8;k++){
    wall.display(25*19+wall.x,wall.y,k*25+wall.z);
  }
  for(int k=10;k<=14;k++){
    wall.display(25*19+wall.x,wall.y,k*25+wall.z);
  }
  for(int k=16;k<=24;k++){
    wall.display(25*19+wall.x,wall.y,k*25+wall.z);
  }
  //24-22
  for(int k=0;k<=8;k++){
    wall.display(25*20+wall.x,wall.y,k*25+wall.z);
  }
  for(int k=10;k<=14;k++){
    wall.display(25*20+wall.x,wall.y,k*25+wall.z);
  }
  for(int k=16;k<=24;k++){
    wall.display(25*20+wall.x,wall.y,k*25+wall.z);
  }
  //24-23
  for(int k=0;k<=8;k++){
    wall.display(25*21+wall.x,wall.y,k*25+wall.z);
  }
  for(int k=10;k<=14;k++){
    wall.display(25*21+wall.x,wall.y,k*25+wall.z);
  }
  for(int k=16;k<=24;k++){
    wall.display(25*21+wall.x,wall.y,k*25+wall.z);
  }
  //24-24
  for(int k=0;k<=8;k++){
    wall.display(25*22+wall.x,wall.y,k*25+wall.z);
  }
  for(int k=10;k<=14;k++){
    wall.display(25*22+wall.x,wall.y,k*25+wall.z);
  }
  for(int k=16;k<=24;k++){
    wall.display(25*22+wall.x,wall.y,k*25+wall.z);
  }
  //24-25
  for(int k=0;k<=24;k++){
    wall.display(25*23+wall.x,wall.y,k*25+wall.z);
  }
  
  
  
  
  //23-1~3
  for(int i=-1;i<=1;i++){
    for(int k=0;k<=24;k++){
      wall.display(i*25+wall.x,1*25+wall.y,k*25+wall.z);
    }
  }
  //23-4
  for(int k=0;k<=22;k++){
    wall.display(25*2+wall.x,1*25+wall.y,k*25+wall.z);
  }
    wall.display(25*2+wall.x,1*25+wall.y,4*25+wall.z);
  for(int k=6;k<=24;k++){
    wall.display(25*2+wall.x,1*25+wall.y,k*25+wall.z);
  }
  //23-5
  for(int k=0;k<=24;k++){
    wall.display(25*3+wall.x,1*25+wall.y,k*25+wall.z);
  }
  //23-6
  for(int k=0;k<=6;k++){
    wall.display(25*4+wall.x,1*25+wall.y,k*25+wall.z);
  }
  for(int k=9;k<=24;k++){
    wall.display(25*4+wall.x,1*25+wall.y,k*25+wall.z);
  }
  //23-7
  for(int k=0;k<=7;k++){
    wall.display(25*5+wall.x,1*25+wall.y,k*25+wall.z);
  }
  for(int k=9;k<=24;k++){
    wall.display(25*5+wall.x,1*25+wall.y,k*25+wall.z);
  }
  //23-8
  for(int k=0;k<=4;k++){
    wall.display(25*6+wall.x,1*25+wall.y,k*25+wall.z);
  }
    wall.display(25*6+wall.x,1*25+wall.y,7*25+wall.z);
  for(int k=9;k<=24;k++){
    wall.display(25*6+wall.x,1*25+wall.y,k*25+wall.z);
  }
  //23-9~25
  for(int i=7;i<=23;i++){
    for(int k=0;k<=24;k++){
      wall.display(i*25+wall.x,1*25+wall.y,k*25+wall.z);
    }
  }
  
  
  
  
  //22-1~3
  for(int i=-1;i<=1;i++){
    for(int k=0;k<=24;k++){
      wall.display(i*25+wall.x,2*25+wall.y,k*25+wall.z);
    }
  }
  //22-4
  for(int k=0;k<=2;k++){
    wall.display(25*2+wall.x,2*25+wall.y,k*25+wall.z);
  }
  for(int k=6;k<=24;k++){
    wall.display(25*2+wall.x,2*25+wall.y,k*25+wall.z);
  }
  //22-5~6
  for(int i=3;i<=4;i++){
    for(int k=0;k<=24;k++){
      wall.display(i*25+wall.x,2*25+wall.y,k*25+wall.z);
    }
  }
  //22-7
  for(int k=0;k<=7;k++){
    wall.display(25*5+wall.x,2*25+wall.y,k*25+wall.z);
  }
  for(int k=17;k<=24;k++){
    wall.display(25*5+wall.x,2*25+wall.y,k*25+wall.z);
  }
  //22-8
  for(int k=0;k<=4;k++){
    wall.display(25*6+wall.x,2*25+wall.y,k*25+wall.z);
  }
    wall.display(25*6+wall.x,2*25+wall.y,6*25+wall.z);
  for(int k=8;k<=15;k++){
    wall.display(25*6+wall.x,2*25+wall.y,k*25+wall.z);
  }
  for(int k=17;k<=24;k++){
    wall.display(25*6+wall.x,2*25+wall.y,k*25+wall.z);
  }
  //22-9~13
  for(int i=7;i<=11;i++){  
    for(int k=0;k<=5;k++){
      wall.display(25*i+wall.x,2*25+wall.y,k*25+wall.z);
    }
  }
  for(int i=7;i<=11;i++){  
    for(int k=7;k<=15;k++){
      wall.display(25*i+wall.x,2*25+wall.y,k*25+wall.z);
    }
  }
  for(int i=7;i<=11;i++){  
    for(int k=17;k<=24;k++){
      wall.display(25*i+wall.x,2*25+wall.y,k*25+wall.z);
    }
  }
  //22-14
  for(int k=0;k<=5;k++){
    wall.display(25*12+wall.x,2*25+wall.y,k*25+wall.z);
  }
  for(int k=17;k<=24;k++){
    wall.display(25*12+wall.x,2*25+wall.y,k*25+wall.z);
  }
  //22-15~25
  for(int i=13;i<=23;i++){
    for(int k=0;k<=24;k++){
      wall.display(i*25+wall.x,2*25+wall.y,k*25+wall.z);
    }
  }
  
  
  
  
  //21-1~7
  for(int i=-1;i<=5;i++){
    for(int k=0;k<=24;k++){
      wall.display(i*25+wall.x,3*25+wall.y,k*25+wall.z);
    }
  }
  //21-8
  for(int k=0;k<=4;k++){
    wall.display(25*6+wall.x,2*25+wall.y,k*25+wall.z);
  }
  for(int k=6;k<=24;k++){
    wall.display(25*6+wall.x,2*25+wall.y,k*25+wall.z);
  }
  //21-9~25
  for(int i=7;i<=23;i++){
    for(int k=0;k<=24;k++){
      wall.display(i*25+wall.x,3*25+wall.y,k*25+wall.z);
    }
  }
  
  
  
  
  //20-1~3
  for(int i=-1;i<=1;i++){
    for(int k=0;k<=24;k++){
      wall.display(i*25+wall.x,4*25+wall.y,k*25+wall.z);
    }
  }
  //20-4
  for(int k=0;k<=10;k++){
    wall.display(2*25+wall.x,4*25+wall.y,k*25+wall.z);
  }
  for(int k=15;k<=24;k++){
    wall.display(2*25+wall.x,4*25+wall.y,k*25+wall.z);
  }
  //20-5
  for(int k=0;k<=7;k++){
    wall.display(3*25+wall.x,4*25+wall.y,k*25+wall.z);
  }
  for(int k=12;k<=13;k++){
    wall.display(3*25+wall.x,4*25+wall.y,k*25+wall.z);
  }
  for(int k=17;k<=24;k++){
    wall.display(3*25+wall.x,4*25+wall.y,k*25+wall.z);
  }
  //20-6
  for(int k=0;k<=5;k++){
    wall.display(4*25+wall.x,4*25+wall.y,k*25+wall.z);
  }
  for(int k=9;k<=15;k++){
    wall.display(4*25+wall.x,4*25+wall.y,k*25+wall.z);
  }
  for(int k=18;k<=24;k++){
    wall.display(4*25+wall.x,4*25+wall.y,k*25+wall.z);
  }
  //20-7
  for(int k=0;k<=5;k++){
    wall.display(5*25+wall.x,4*25+wall.y,k*25+wall.z);
  }
  for(int k=7;k<=24;k++){
    wall.display(5*25+wall.x,4*25+wall.y,k*25+wall.z);
  }
  //20-8~15
  for(int i=6;i<=13;i++){
    for(int k=0;k<=4;k++){
      wall.display(i*25+wall.x,4*25+wall.y,k*25+wall.z);
    }
  }
  for(int i=6;i<=13;i++){
    for(int k=6;k<=24;k++){
      wall.display(i*25+wall.x,4*25+wall.y,k*25+wall.z);
    }
  }
  //20-16
  for(int k=0;k<=4;k++){
    wall.display(14*25+wall.x,4*25+wall.y,k*25+wall.z);
  }
  for(int k=7;k<=24;k++){
    wall.display(14*25+wall.x,4*25+wall.y,k*25+wall.z);
  }
  //20-17
  for(int k=0;k<=5;k++){
    wall.display(15*25+wall.x,4*25+wall.y,k*25+wall.z);
  }
  for(int k=9;k<=15;k++){
    wall.display(15*25+wall.x,4*25+wall.y,k*25+wall.z);
  }
  for(int k=18;k<=24;k++){
    wall.display(15*25+wall.x,4*25+wall.y,k*25+wall.z);
  }
  //20-18
  for(int k=0;k<=7;k++){
    wall.display(16*25+wall.x,4*25+wall.y,k*25+wall.z);
  }
  for(int k=12;k<=13;k++){
    wall.display(16*25+wall.x,4*25+wall.y,k*25+wall.z);
  }
  for(int k=17;k<=24;k++){
    wall.display(16*25+wall.x,4*25+wall.y,k*25+wall.z);
  }
  //20-19
  for(int k=0;k<=10;k++){
    wall.display(17*25+wall.x,4*25+wall.y,k*25+wall.z);
  }
  for(int k=15;k<=24;k++){
    wall.display(17*25+wall.x,4*25+wall.y,k*25+wall.z);
  }
  //20-20~25
  for(int i=18;i<=23;i++){
    for(int k=0;k<=24;k++){
      wall.display(i*25+wall.x,4*25+wall.y,k*25+wall.z);
    }
  }
  // This draws the maze
}

