
int x1 = 200;
int y1 = 300;

int x2 = 100;
int y2 = 300;

int x3 = 250;
int y3 = 500;

void setup(){
  size(500,500);
}

void draw(){
  background(37,158,140);
  tekenDriehoek(250,100, 100,400, 300,450);
}

  // teken een driehoek m.b.v. de meegegeven data (parameters)
void tekenDriehoek(int x1, int y1, int x2, int y2, int x3, int y3) {
  for(int i = 0; i < 1; i++);
    triangle(x1,y1, x2,y2, x3,y3);
      
  }
