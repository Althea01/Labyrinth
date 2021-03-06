Box box;
Wall wall;
Instruction instruction;
void setup() {
  size(1000, 600, P3D);
  box = new Box();
  wall = new Wall();
  instruction = new Instruction();

}

void draw() {
  // This redraws the background everytime
  background(0);
  
  instruction.display();
  
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
  
  
  
  
  //19-1~7
  for(int i=-1;i<=5;i++){
    for(int k=0;k<=24;k++){
      wall.display(i*25+wall.x,5*25+wall.y,k*25+wall.z);
    }
  }
  //19-8~16
  for(int i=6;i<=14;i++){
    for(int k=0;k<=4;k++){
      wall.display(i*25+wall.x,5*25+wall.y,k*25+wall.z);
    }
  }
  for(int i=6;i<=14;i++){
    for(int k=6;k<=18;k++){
      wall.display(i*25+wall.x,5*25+wall.y,k*25+wall.z);
    }
  }
  for(int i=6;i<=14;i++){
    for(int k=20;k<=24;k++){
      wall.display(i*25+wall.x,5*25+wall.y,k*25+wall.z);
    }
  }
  //19-17
  for(int k=0;k<=4;k++){
    wall.display(15*25+wall.x,5*25+wall.y,k*25+wall.z);
  }
  for(int k=7;k<=17;k++){
    wall.display(15*25+wall.x,5*25+wall.y,k*25+wall.z);
  }
  for(int k=20;k<=24;k++){
    wall.display(15*25+wall.x,5*25+wall.y,k*25+wall.z);
  }
  //19-18
  for(int k=0;k<=5;k++){
    wall.display(16*25+wall.x,5*25+wall.y,k*25+wall.z);
  }
  for(int k=8;k<=16;k++){
    wall.display(16*25+wall.x,5*25+wall.y,k*25+wall.z);
  }
  for(int k=19;k<=24;k++){
    wall.display(16*25+wall.x,5*25+wall.y,k*25+wall.z);
  }
  //19-19
  for(int k=0;k<=6;k++){
    wall.display(17*25+wall.x,5*25+wall.y,k*25+wall.z);
  }
  for(int k=10;k<=14;k++){
    wall.display(17*25+wall.x,5*25+wall.y,k*25+wall.z);
  }
  for(int k=18;k<=24;k++){
    wall.display(17*25+wall.x,5*25+wall.y,k*25+wall.z);
  }
  //19-20
  for(int k=0;k<=8;k++){
    wall.display(18*25+wall.x,5*25+wall.y,k*25+wall.z);
  }
  for(int k=0;k<=8;k++){
    wall.display(18*25+wall.x,5*25+wall.y,k*25+wall.z);
  }
  //19-21~25
  for(int i=19;i<=23;i++){
    for(int k=16;k<=24;k++){
      wall.display(i*25+wall.x,5*25+wall.y,k*25+wall.z);
    }
  }
  
  
  
  
  //18-1~4
  for(int i=-1;i<=2;i++){
    for(int k=0;k<=24;k++){
      wall.display(i*25+wall.x,6*25+wall.y,k*25+wall.z);
    }
  }
  //18-5
  for(int k=0;k<=7;k++){
    wall.display(3*25+wall.x,6*25+wall.y,k*25+wall.z);
  }
  for(int k=11;k<=24;k++){
    wall.display(3*25+wall.x,6*25+wall.y,k*25+wall.z);
  }
  //18-6~7
  for(int i=4;i<=5;i++){
    for(int k=0;k<=9;k++){
      wall.display(i*25+wall.x,6*25+wall.y,k*25+wall.z);
    }
  }
  for(int i=4;i<=5;i++){
    for(int k=11;k<=24;k++){
      wall.display(i*25+wall.x,6*25+wall.y,k*25+wall.z);
    }
  }
  //18-8
  for(int k=0;k<=4;k++){
    wall.display(6*25+wall.x,6*25+wall.y,k*25+wall.z);
  }
  for(int k=6;k<=9;k++){
    wall.display(6*25+wall.x,6*25+wall.y,k*25+wall.z);
  }
  for(int k=11;k<=24;k++){
    wall.display(6*25+wall.x,6*25+wall.y,k*25+wall.z);
  }
  //18-9
  for(int k=0;k<=9;k++){
    wall.display(7*25+wall.x,6*25+wall.y,k*25+wall.z);
  }
  for(int k=11;k<=24;k++){
    wall.display(7*25+wall.x,6*25+wall.y,k*25+wall.z);
  }
  //18-10
  for(int k=0;k<=9;k++){
    wall.display(8*25+wall.x,6*25+wall.y,k*25+wall.z);
  }
  for(int k=14;k<=24;k++){
    wall.display(8*25+wall.x,6*25+wall.y,k*25+wall.z);
  }
  //18-11
  for(int k=0;k<=12;k++){
    wall.display(9*25+wall.x,6*25+wall.y,k*25+wall.z);
  }
  for(int k=14;k<=24;k++){
    wall.display(9*25+wall.x,6*25+wall.y,k*25+wall.z);
  }
  //18-12
  for(int k=0;k<=11;k++){
    wall.display(10*25+wall.x,6*25+wall.y,k*25+wall.z);
  }
  for(int k=15;k<=24;k++){
    wall.display(10*25+wall.x,6*25+wall.y,k*25+wall.z);
  }
  //18-13
  for(int k=0;k<=11;k++){
    wall.display(11*25+wall.x,6*25+wall.y,k*25+wall.z);
  }
    wall.display(11*25+wall.x,6*25+wall.y,13*25+wall.z);
  for(int k=15;k<=24;k++){
    wall.display(11*25+wall.x,6*25+wall.y,k*25+wall.z);
  }
  //18-14
  for(int k=0;k<=10;k++){
    wall.display(12*25+wall.x,6*25+wall.y,k*25+wall.z);
  }
    wall.display(12*25+wall.x,6*25+wall.y,13*25+wall.z);
  for(int k=16;k<=24;k++){
    wall.display(12*25+wall.x,6*25+wall.y,k*25+wall.z);
  }
  //18-15
  for(int k=0;k<=9;k++){
    wall.display(13*25+wall.x,6*25+wall.y,k*25+wall.z);
  }
  for(int k=12;k<=14;k++){
    wall.display(13*25+wall.x,6*25+wall.y,k*25+wall.z);
  }
  for(int k=17;k<=24;k++){
    wall.display(13*25+wall.x,6*25+wall.y,k*25+wall.z);
  }
  //18-16
  for(int k=0;k<=9;k++){
    wall.display(14*25+wall.x,6*25+wall.y,k*25+wall.z);
  }
  for(int k=11;k<=15;k++){
    wall.display(14*25+wall.x,6*25+wall.y,k*25+wall.z);
  }
  for(int k=17;k<=24;k++){
    wall.display(14*25+wall.x,6*25+wall.y,k*25+wall.z);
  }
  //18-17
  for(int k=0;k<=8;k++){
    wall.display(15*25+wall.x,6*25+wall.y,k*25+wall.z);
  }
  for(int k=11;k<=15;k++){
    wall.display(15*25+wall.x,6*25+wall.y,k*25+wall.z);
  }
  for(int k=18;k<=24;k++){
    wall.display(15*25+wall.x,6*25+wall.y,k*25+wall.z);
  }
  //18-18
  for(int k=0;k<=7;k++){
    wall.display(16*25+wall.x,6*25+wall.y,k*25+wall.z);
  }
  for(int k=19;k<=24;k++){
    wall.display(16*25+wall.x,6*25+wall.y,k*25+wall.z);
  }
  //18-19
  for(int k=0;k<=7;k++){
    wall.display(17*25+wall.x,6*25+wall.y,k*25+wall.z);
  }
  for(int k=9;k<=17;k++){
    wall.display(17*25+wall.x,6*25+wall.y,k*25+wall.z);
  }
  for(int k=19;k<=24;k++){
    wall.display(17*25+wall.x,6*25+wall.y,k*25+wall.z);
  }
  //18-20
  for(int k=0;k<=6;k++){
    wall.display(18*25+wall.x,6*25+wall.y,k*25+wall.z);
  }
  for(int k=9;k<=17;k++){
    wall.display(18*25+wall.x,6*25+wall.y,k*25+wall.z);
  }
  for(int k=20;k<=24;k++){
    wall.display(18*25+wall.x,6*25+wall.y,k*25+wall.z);
  }
  //18-21
  for(int k=0;k<=5;k++){
    wall.display(19*25+wall.x,6*25+wall.y,k*25+wall.z);
  }
  for(int k=8;k<=18;k++){
    wall.display(19*25+wall.x,6*25+wall.y,k*25+wall.z);
  }
  for(int k=21;k<=24;k++){
    wall.display(19*25+wall.x,6*25+wall.y,k*25+wall.z);
  }
  //18-22~23
  for(int i=20;i<=21;i++){
    for(int k=0;k<=5;k++){
      wall.display(i*25+wall.x,6*25+wall.y,k*25+wall.z);
    }
  }
  for(int i=20;i<=21;i++){
    for(int k=7;k<=19;k++){
      wall.display(i*25+wall.x,6*25+wall.y,k*25+wall.z);
    }
  }
  for(int i=20;i<=21;i++){
    for(int k=21;k<=24;k++){
      wall.display(i*25+wall.x,6*25+wall.y,k*25+wall.z);
    }
  }
  //18-24~25
  for(int i=22;i<=23;i++){
    for(int k=0;k<=24;k++){
      wall.display(i*25+wall.x,6*25+wall.y,k*25+wall.z);
    }
  }
  
  
  
  
  //17-1~4
  for(int i=-1;i<=2;i++){
    for(int k=0;k<=24;k++){
      wall.display(i*25+wall.x,7*25+wall.y,k*25+wall.z);
    }
  }
  //17-5
  for(int k=0;k<=7;k++){
    wall.display(3*25+wall.x,7*25+wall.y,k*25+wall.z);
  }
  for(int k=9;k<=24;k++){
    wall.display(3*25+wall.x,7*25+wall.y,k*25+wall.z);
  }
  //17-6
  for(int k=0;k<=4;k++){
    wall.display(4*25+wall.x,7*25+wall.y,k*25+wall.z);
  }
  for(int k=8;k<=24;k++){
    wall.display(4*25+wall.x,7*25+wall.y,k*25+wall.z);
  }
  //17-7
  for(int k=0;k<=6;k++){
    wall.display(5*25+wall.x,7*25+wall.y,k*25+wall.z);
  }
  for(int k=8;k<=24;k++){
    wall.display(5*25+wall.x,7*25+wall.y,k*25+wall.z);
  }
  //17-8
  for(int k=0;k<=4;k++){
    wall.display(6*25+wall.x,7*25+wall.y,k*25+wall.z);
  }
  for(int k=8;k<=24;k++){
    wall.display(6*25+wall.x,7*25+wall.y,k*25+wall.z);
  }
  //17-9~10
  for(int i=7;i<=9;i++){
    for(int k=0;k<=6;k++){
      wall.display(i*25+wall.x,7*25+wall.y,k*25+wall.z);
    }
  }
  for(int i=7;i<=9;i++){
    for(int k=8;k<=24;k++){
      wall.display(i*25+wall.x,7*25+wall.y,k*25+wall.z);
    }
  }
  //17-11
  for(int k=0;k<=6;k++){
    wall.display(9*25+wall.x,7*25+wall.y,k*25+wall.z);
  }
  for(int k=8;k<=10;k++){
    wall.display(9*25+wall.x,7*25+wall.y,k*25+wall.z);
  }
  for(int k=17;k<=24;k++){
    wall.display(9*25+wall.x,7*25+wall.y,k*25+wall.z);
  }
  //17-12
  for(int k=0;k<=6;k++){
    wall.display(10*25+wall.x,7*25+wall.y,k*25+wall.z);
  }
    wall.display(10*25+wall.x,7*25+wall.y,8*25+wall.z);
  for(int k=12;k<=15;k++){
    wall.display(10*25+wall.x,7*25+wall.y,k*25+wall.z);
  }
  for(int k=18;k<=24;k++){
    wall.display(10*25+wall.x,7*25+wall.y,k*25+wall.z);
  }
  //17-13
  for(int k=0;k<=6;k++){
    wall.display(11*25+wall.x,7*25+wall.y,k*25+wall.z);
  }
  for(int k=10;k<=16;k++){
    wall.display(11*25+wall.x,7*25+wall.y,k*25+wall.z);
  }
  for(int k=19;k<=24;k++){
    wall.display(11*25+wall.x,7*25+wall.y,k*25+wall.z);
  }
  //17-14~22
  for(int i=12;i<=20;i++){
    for(int k=0;k<=6;k++){
      wall.display(i*25+wall.x,7*25+wall.y,k*25+wall.z);
    }
  }
  for(int i=12;i<=20;i++){
    for(int k=8;k<=17;k++){
      wall.display(i*25+wall.x,7*25+wall.y,k*25+wall.z);
    }
  }
  for(int i=12;i<=20;i++){
    for(int k=19;k<=24;k++){
      wall.display(i*25+wall.x,7*25+wall.y,k*25+wall.z);
    }
  }
  //17-23~25
  for(int i=21;i<=23;i++){
    for(int k=0;k<=24;k++){
      wall.display(i*25+wall.x,7*25+wall.y,k*25+wall.z);
    }
  }
  
  
  
  
  //16-1~4
  for(int i=-1;i<=2;i++){
    for(int k=0;k<=24;k++){
      wall.display(i*25+wall.x,8*25+wall.y,k*25+wall.z);
    }
  }
  //16-5
  for(int k=0;k<=7;k++){
    wall.display(3*25+wall.x,8*25+wall.y,k*25+wall.z);
  }
  for(int k=9;k<=16;k++){
    wall.display(3*25+wall.x,8*25+wall.y,k*25+wall.z);
  }
  for(int k=18;k<=24;k++){
    wall.display(3*25+wall.x,8*25+wall.y,k*25+wall.z);
  }
  //16-6
  for(int k=0;k<=4;k++){
    wall.display(3*25+wall.x,8*25+wall.y,k*25+wall.z);
  }
  for(int k=6;k<=16;k++){
    wall.display(3*25+wall.x,8*25+wall.y,k*25+wall.z);
  }
  for(int k=18;k<=24;k++){
    wall.display(3*25+wall.x,8*25+wall.y,k*25+wall.z);
  }
  //16-7~10
  for(int i=5;i<=8;i++){
    for(int k=0;k<=16;k++){
      wall.display(i*25+wall.x,8*25+wall.y,k*25+wall.z);
    }
  }
  for(int i=5;i<=8;i++){
    for(int k=18;k<=24;k++){
      wall.display(i*25+wall.x,8*25+wall.y,k*25+wall.z);
    }
  }
  //16-11
  for(int k=0;k<=12;k++){
    wall.display(9*25+wall.x,8*25+wall.y,k*25+wall.z);
  }
  for(int k=18;k<=24;k++){
    wall.display(9*25+wall.x,8*25+wall.y,k*25+wall.z);
  }
  //16-12
  for(int k=0;k<=11;k++){
    wall.display(10*25+wall.x,8*25+wall.y,k*25+wall.z);
  }
  for(int k=14;k<=15;k++){
    wall.display(10*25+wall.x,8*25+wall.y,k*25+wall.z);
  }
  for(int k=18;k<=24;k++){
    wall.display(10*25+wall.x,8*25+wall.y,k*25+wall.z);
  }
  //16-13
  for(int k=0;k<=10;k++){
    wall.display(11*25+wall.x,8*25+wall.y,k*25+wall.z);
  }
  for(int k=13;k<=16;k++){
    wall.display(11*25+wall.x,8*25+wall.y,k*25+wall.z);
  }
  for(int k=18;k<=24;k++){
    wall.display(11*25+wall.x,8*25+wall.y,k*25+wall.z);
  }
  //16-14
  for(int k=0;k<=10;k++){
    wall.display(12*25+wall.x,8*25+wall.y,k*25+wall.z);
  }
  for(int k=12;k<=16;k++){
    wall.display(12*25+wall.x,8*25+wall.y,k*25+wall.z);
  }
  for(int k=18;k<=24;k++){
    wall.display(12*25+wall.x,8*25+wall.y,k*25+wall.z);
  }
  //16-15
  for(int k=0;k<=10;k++){
    wall.display(13*25+wall.x,8*25+wall.y,k*25+wall.z);
  }
  for(int k=13;k<=16;k++){
    wall.display(13*25+wall.x,8*25+wall.y,k*25+wall.z);
  }
  for(int k=18;k<=24;k++){
    wall.display(13*25+wall.x,8*25+wall.y,k*25+wall.z);
  }
  //16-16
  for(int k=0;k<=11;k++){
    wall.display(14*25+wall.x,8*25+wall.y,k*25+wall.z);
  }
  for(int k=14;k<=15;k++){
    wall.display(14*25+wall.x,8*25+wall.y,k*25+wall.z);
  }
  for(int k=18;k<=24;k++){
    wall.display(14*25+wall.x,8*25+wall.y,k*25+wall.z);
  }
  //16-17
  for(int k=0;k<=12;k++){
    wall.display(15*25+wall.x,8*25+wall.y,k*25+wall.z);
  }
  for(int k=17;k<=24;k++){
    wall.display(15*25+wall.x,8*25+wall.y,k*25+wall.z);
  }
  //16-18~25
  for(int i=16;i<=23;i++){
    for(int k=0;k<=24;k++){
      wall.display(i*25+wall.x,8*25+wall.y,k*25+wall.z);
    }
  }
  
  
  
  
  //15-1~4
  for(int i=-1;i<=2;i++){
    for(int k=0;k<=24;k++){
      wall.display(i*25+wall.x,9*25+wall.y,k*25+wall.z);
    }
  }
  //15-5
  for(int k=0;k<=4;k++){
    wall.display(3*25+wall.x,9*25+wall.y,k*25+wall.z);
  }
  for(int k=16;k<=24;k++){
    wall.display(3*25+wall.x,9*25+wall.y,k*25+wall.z);
  }
  //15-6~13
  for(int i=4;i<=11;i++){
    for(int k=0;k<=4;k++){
      wall.display(i*25+wall.x,9*25+wall.y,k*25+wall.z);
    }
  }
  for(int i=4;i<=11;i++){
    for(int k=6;k<=14;k++){
      wall.display(i*25+wall.x,9*25+wall.y,k*25+wall.z);
    }
  }
  for(int i=4;i<=11;i++){
    for(int k=16;k<=24;k++){
      wall.display(i*25+wall.x,9*25+wall.y,k*25+wall.z);
    }
  }
  //15-14
  for(int k=0;k<=4;k++){
    wall.display(12*25+wall.x,9*25+wall.y,k*25+wall.z);
  }
  for(int k=16;k<=24;k++){
    wall.display(12*25+wall.x,9*25+wall.y,k*25+wall.z);
  }
  //15-15~25
  for(int i=13;i<=23;i++){
    for(int k=0;k<=24;k++){
      wall.display(i*25+wall.x,9*25+wall.y,k*25+wall.z);
    }
  }
  
  
  
  
  //14-1~5
  for(int i=-1;i<=3;i++){
    for(int k=0;k<=24;k++){
      wall.display(i*25+wall.x,10*25+wall.y,k*25+wall.z);
    }
  }
  //14-6
  for(int k=0;k<=9;k++){
    wall.display(4*25+wall.x,10*25+wall.y,k*25+wall.z);
  }
  for(int k=20;k<=24;k++){
    wall.display(4*25+wall.x,10*25+wall.y,k*25+wall.z);
  }
  //14-7~13
  for(int i=5;i<=11;i++){
    for(int k=0;k<=14;k++){
      wall.display(i*25+wall.x,10*25+wall.y,k*25+wall.z);
    }
  }
  for(int i=5;i<=11;i++){
    for(int k=16;k<=24;k++){
      wall.display(i*25+wall.x,10*25+wall.y,k*25+wall.z);
    }
  }
  //14-14
  for(int k=0;k<=14;k++){
    wall.display(12*25+wall.x,10*25+wall.y,k*25+wall.z);
  }
  for(int k=16;k<=17;k++){
    wall.display(12*25+wall.x,10*25+wall.y,k*25+wall.z);
  }
  for(int k=21;k<=24;k++){
    wall.display(12*25+wall.x,10*25+wall.y,k*25+wall.z);
  }
  //14-15~18
  for(int i=13;i<=16;i++){
    for(int k=0;k<=14;k++){
      wall.display(i*25+wall.x,10*25+wall.y,k*25+wall.z);
    }
  }
  for(int i=13;i<=16;i++){
    for(int k=16;k<=24;k++){
      wall.display(i*25+wall.x,10*25+wall.y,k*25+wall.z);
    }
  }
  //14-19~25
  for(int i=17;i<=23;i++){
    for(int k=0;k<=24;k++){
      wall.display(i*25+wall.x,10*25+wall.y,k*25+wall.z);
    }
  }
  
  
  
  
  //13-1~2
  for(int i=-1;i<=0;i++){
    for(int k=0;k<=24;k++){
      wall.display(i*25+wall.x,11*25+wall.y,k*25+wall.z);
    }
  }
  //13-3~10
  for(int i=1;i<=8;i++){
    wall.display(i*25+wall.x,11*25+wall.y,0*25+wall.z);
  }
  for(int i=1;i<=8;i++){
    for(int k=2;k<=14;k++){
      wall.display(i*25+wall.x,11*25+wall.y,k*25+wall.z);
    }
  }
  for(int i=1;i<=8;i++){
    for(int k=16;k<=24;k++){
      wall.display(i*25+wall.x,11*25+wall.y,k*25+wall.z);
    }
  }
  //13-11
    wall.display(9*25+wall.x,11*25+wall.y,0*25+wall.z);
  for(int k=2;k<=14;k++){
    wall.display(9*25+wall.x,11*25+wall.y,k*25+wall.z);
  }
  //13-12
    wall.display(10*25+wall.x,11*25+wall.y,0*25+wall.z);
  for(int k=3;k<=13;k++){
    wall.display(10*25+wall.x,11*25+wall.y,k*25+wall.z);
  }
  for(int k=16;k<=17;k++){
    wall.display(10*25+wall.x,11*25+wall.y,k*25+wall.z);
  }
  for(int k=19;k<=24;k++){
    wall.display(10*25+wall.x,11*25+wall.y,k*25+wall.z);
  }
  //13-13
  for(int k=0;k<=1;k++){
    wall.display(11*25+wall.x,11*25+wall.y,k*25+wall.z);
  }
  for(int k=4;k<=12;k++){
    wall.display(11*25+wall.x,11*25+wall.y,k*25+wall.z);
  }
  for(int k=15;k<=17;k++){
    wall.display(11*25+wall.x,11*25+wall.y,k*25+wall.z);
  }
  for(int k=19;k<=24;k++){
    wall.display(11*25+wall.x,11*25+wall.y,k*25+wall.z);
  }
  //13-14
  for(int k=0;k<=2;k++){
    wall.display(12*25+wall.x,11*25+wall.y,k*25+wall.z);
  }
  for(int k=6;k<=10;k++){
    wall.display(12*25+wall.x,11*25+wall.y,k*25+wall.z);
  }
  for(int k=14;k<=17;k++){
    wall.display(12*25+wall.x,11*25+wall.y,k*25+wall.z);
  }
    wall.display(12*25+wall.x,11*25+wall.y,19*25+wall.z);
  for(int k=21;k<=24;k++){
    wall.display(12*25+wall.x,11*25+wall.y,k*25+wall.z);
  }
  //13-15
  for(int k=0;k<=4;k++){
    wall.display(13*25+wall.x,11*25+wall.y,k*25+wall.z);
  }
  for(int k=12;k<=24;k++){
    wall.display(13*25+wall.x,11*25+wall.y,k*25+wall.z);
  }
  //13-16~25
  for(int i=14;i<=23;i++){
    for(int k=0;k<=24;k++){
      wall.display(i*25+wall.x,11*25+wall.y,k*25+wall.z);
    }
  }
  
  
  
  
  //12-1~3
  for(int i=-1;i<=1;i++){
    for(int k=0;k<=24;k++){
      wall.display(i*25+wall.x,12*25+wall.y,k*25+wall.z);
    }
  }
  //12-4
  for(int k=0;k<=2;k++){
    wall.display(2*25+wall.x,12*25+wall.y,k*25+wall.z);
  }
  for(int k=4;k<=12;k++){
    wall.display(2*25+wall.x,12*25+wall.y,k*25+wall.z);
  }
  for(int k=14;k<=24;k++){
    wall.display(2*25+wall.x,12*25+wall.y,k*25+wall.z);
  }
  //12-5
  for(int k=0;k<=2;k++){
    wall.display(3*25+wall.x,12*25+wall.y,k*25+wall.z);
  }
  for(int k=6;k<=10;k++){
    wall.display(3*25+wall.x,12*25+wall.y,k*25+wall.z);
  }
  for(int k=14;k<=24;k++){
    wall.display(3*25+wall.x,12*25+wall.y,k*25+wall.z);
  }
  //12-6
  for(int k=0;k<=2;k++){
    wall.display(4*25+wall.x,12*25+wall.y,k*25+wall.z);
  }
    wall.display(4*25+wall.x,12*25+wall.y,4*25+wall.z);
  for(int k=6;k<=10;k++){
    wall.display(4*25+wall.x,12*25+wall.y,k*25+wall.z);
  }
    wall.display(4*25+wall.x,12*25+wall.y,12*25+wall.z);
  for(int k=14;k<=24;k++){
    wall.display(4*25+wall.x,12*25+wall.y,k*25+wall.z);
  }
  //12-7
  for(int k=0;k<=2;k++){
    wall.display(5*25+wall.x,12*25+wall.y,k*25+wall.z);
  }
    wall.display(5*25+wall.x,12*25+wall.y,4*25+wall.z);
  for(int k=7;k<=9;k++){
    wall.display(5*25+wall.x,12*25+wall.y,k*25+wall.z);
  }
    wall.display(5*25+wall.x,12*25+wall.y,12*25+wall.z);
  for(int k=14;k<=24;k++){
    wall.display(5*25+wall.x,12*25+wall.y,k*25+wall.z);
  }
  //12-8~9
  for(int i=6;i<=7;i++){
    for(int k=0;k<=2;k++){
      wall.display(i*25+wall.x,12*25+wall.y,k*25+wall.z);
    }
  }
  for(int i=6;i<=7;i++){
    for(int k=4;k<=5;k++){
      wall.display(i*25+wall.x,12*25+wall.y,k*25+wall.z);
    }
  }
  for(int i=6;i<=7;i++){
    for(int k=7;k<=9;k++){
      wall.display(i*25+wall.x,12*25+wall.y,k*25+wall.z);
    }
  }
  for(int i=6;i<=7;i++){
    for(int k=11;k<=12;k++){
      wall.display(i*25+wall.x,12*25+wall.y,k*25+wall.z);
    }
  }
  for(int i=6;i<=7;i++){
    for(int k=14;k<=24;k++){
      wall.display(i*25+wall.x,12*25+wall.y,k*25+wall.z);
    }
  }
  //12-10
  for(int k=0;k<=2;k++){
    wall.display(8*25+wall.x,12*25+wall.y,k*25+wall.z);
  }
  for(int k=4;k<=5;k++){
    wall.display(8*25+wall.x,12*25+wall.y,k*25+wall.z);
  }
    wall.display(8*25+wall.x,12*25+wall.y,8*25+wall.z);
  for(int k=11;k<=12;k++){
    wall.display(8*25+wall.x,12*25+wall.y,k*25+wall.z);
  }
  for(int k=14;k<=24;k++){
    wall.display(8*25+wall.x,12*25+wall.y,k*25+wall.z);
  }
  //12-11~13
  for(int i=9;i<=11;i++){
    for(int k=0;k<=2;k++){
      wall.display(i*25+wall.x,12*25+wall.y,k*25+wall.z);
    }
  }
  for(int i=9;i<=11;i++){
    for(int k=4;k<=6;k++){
      wall.display(i*25+wall.x,12*25+wall.y,k*25+wall.z);
    }
  }
  for(int i=9;i<=11;i++){
    wall.display(i*25+wall.x,12*25+wall.y,8*25+wall.z);
  }
  for(int i=9;i<=11;i++){
    for(int k=10;k<=12;k++){
      wall.display(i*25+wall.x,12*25+wall.y,k*25+wall.z);
    }
  }
  for(int i=9;i<=11;i++){
    for(int k=14;k<=24;k++){
      wall.display(i*25+wall.x,12*25+wall.y,k*25+wall.z);
    }
  }
  //12-14
  for(int k=0;k<=2;k++){
    wall.display(12*25+wall.x,12*25+wall.y,k*25+wall.z);
  }
  for(int k=4;k<=6;k++){
    wall.display(12*25+wall.x,12*25+wall.y,k*25+wall.z);
  }
  for(int k=10;k<=12;k++){
    wall.display(12*25+wall.x,12*25+wall.y,k*25+wall.z);
  }
  for(int k=14;k<=19;k++){
    wall.display(12*25+wall.x,12*25+wall.y,k*25+wall.z);
  }
  for(int k=21;k<=24;k++){
    wall.display(12*25+wall.x,12*25+wall.y,k*25+wall.z);
  }
  //12-15
  for(int k=0;k<=2;k++){
    wall.display(12*25+wall.x,12*25+wall.y,k*25+wall.z);
  }
  for(int k=4;k<=7;k++){
    wall.display(12*25+wall.x,12*25+wall.y,k*25+wall.z);
  }
  for(int k=9;k<=12;k++){
    wall.display(12*25+wall.x,12*25+wall.y,k*25+wall.z);
  }
  for(int k=14;k<=19;k++){
    wall.display(12*25+wall.x,12*25+wall.y,k*25+wall.z);
  }
  for(int k=21;k<=24;k++){
    wall.display(12*25+wall.x,12*25+wall.y,k*25+wall.z);
  }
  //12-16
  for(int k=0;k<=2;k++){
    wall.display(12*25+wall.x,12*25+wall.y,k*25+wall.z);
  }
  for(int k=4;k<=7;k++){
    wall.display(12*25+wall.x,12*25+wall.y,k*25+wall.z);
  }
  for(int k=9;k<=12;k++){
    wall.display(12*25+wall.x,12*25+wall.y,k*25+wall.z);
  }
  for(int k=14;k<=19;k++){
    wall.display(12*25+wall.x,12*25+wall.y,k*25+wall.z);
  }
  for(int k=22;k<=24;k++){
    wall.display(12*25+wall.x,12*25+wall.y,k*25+wall.z);
  }
  //12-17
  for(int k=0;k<=2;k++){
    wall.display(12*25+wall.x,12*25+wall.y,k*25+wall.z);
  }
  for(int k=4;k<=7;k++){
    wall.display(12*25+wall.x,12*25+wall.y,k*25+wall.z);
  }
  for(int k=9;k<=12;k++){
    wall.display(12*25+wall.x,12*25+wall.y,k*25+wall.z);
  }
  for(int k=14;k<=20;k++){
    wall.display(12*25+wall.x,12*25+wall.y,k*25+wall.z);
  }
  for(int k=22;k<=24;k++){
    wall.display(12*25+wall.x,12*25+wall.y,k*25+wall.z);
  }
  //12-18
  for(int k=0;k<=2;k++){
    wall.display(12*25+wall.x,12*25+wall.y,k*25+wall.z);
  }
  for(int k=4;k<=7;k++){
    wall.display(12*25+wall.x,12*25+wall.y,k*25+wall.z);
  }
  for(int k=9;k<=12;k++){
    wall.display(12*25+wall.x,12*25+wall.y,k*25+wall.z);
  }
  for(int k=14;k<=24;k++){
    wall.display(12*25+wall.x,12*25+wall.y,k*25+wall.z);
  }
  //12-19
  for(int k=0;k<=2;k++){
    wall.display(12*25+wall.x,12*25+wall.y,k*25+wall.z);
  }
  for(int k=4;k<=12;k++){
    wall.display(12*25+wall.x,12*25+wall.y,k*25+wall.z);
  }
  for(int k=14;k<=24;k++){
    wall.display(12*25+wall.x,12*25+wall.y,k*25+wall.z);
  }
  //12-20~25
  for(int i=18;i<=23;i++){
    for(int k=0;k<=24;k++){
      wall.display(i*25+wall.x,12*25+wall.y,k*25+wall.z);
    }
  }
  
  
  
  
  //11-1~3
  for(int i=-1;i<=1;i++){
    for(int k=0;k<=24;k++){
      wall.display(i*25+wall.x,13*25+wall.y,k*25+wall.z);
    }
  }
  //11-4
  for(int k=0;k<=7;k++){
    wall.display(2*25+wall.x,13*25+wall.y,k*25+wall.z);
  }
  for(int k=22;k<=24;k++){
    wall.display(2*25+wall.x,13*25+wall.y,k*25+wall.z);
  }
  //11-5~9
  for(int i=3;i<=7;i++){
    for(int k=0;k<=11;k++){
      wall.display(i*25+wall.x,13*25+wall.y,k*25+wall.z);
    }
  }
  for(int i=3;i<=7;i++){
    for(int k=9;k<=24;k++){
      wall.display(i*25+wall.x,13*25+wall.y,k*25+wall.z);
    }
  }
  //11-10
  for(int k=0;k<=7;k++){
    wall.display(8*25+wall.x,13*25+wall.y,k*25+wall.z);
  }
  for(int k=22;k<=24;k++){
    wall.display(8*25+wall.x,13*25+wall.y,k*25+wall.z);
  }
  //11-11~16
  for(int i=9;i<=14;i++){
    for(int k=0;k<=11;k++){
      wall.display(i*25+wall.x,13*25+wall.y,k*25+wall.z);
    }
  }
  for(int i=9;i<=14;i++){
    for(int k=9;k<=24;k++){
      wall.display(i*25+wall.x,13*25+wall.y,k*25+wall.z);
    }
  }
  //11-17
  for(int k=0;k<=7;k++){
    wall.display(15*25+wall.x,13*25+wall.y,k*25+wall.z);
  }
  for(int k=22;k<=24;k++){
    wall.display(15*25+wall.x,13*25+wall.y,k*25+wall.z);
  }
  //11-18~25
  for(int i=16;i<=23;i++){
    for(int k=0;k<=24;k++){
      wall.display(i*25+wall.x,13*25+wall.y,k*25+wall.z);
    }
  }
  
  
  
  
  //10-1~3
  for(int i=-1;i<=1;i++){
    for(int k=0;k<=24;k++){
      wall.display(i*25+wall.x,14*25+wall.y,k*25+wall.z);
    }
  }
  //10-4
  //10-5
  //10-6
  //10-7
  //10-8
  //10-9
  //10-10
  //10-11
  //10-12
  //10-13
  //10-14
  //10-15
  //10-16
  //10-17
  //10-18~25
  for(int i=16;i<=23;i++){
    for(int k=0;k<=24;k++){
      wall.display(i*25+wall.x,14*25+wall.y,k*25+wall.z);
    }
  }
  // This draws the maze
}

