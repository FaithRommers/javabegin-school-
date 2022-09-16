

void setup(){
  size (500,500);
}

void draw(){
  background(62, 79, 56);
  vierkant (280,150,160,160);
}

void vierkant(int x,int y, int w, int h ){
  //top line
  line(x ,y ,x + w, y);
  //bottom line
  line(x ,y+h, x+w, y+h);
  //left line
  line(x, y, x, y+h);
  //right line
  line(x+w, y, x+w, y+h);
}
