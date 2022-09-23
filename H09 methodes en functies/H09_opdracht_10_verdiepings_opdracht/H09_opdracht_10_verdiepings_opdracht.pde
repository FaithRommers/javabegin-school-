

void setup(){
  size (500,500);
}


void draw(){
  background(155, 104, 214);
  boom(50,50);
}

void boom(int x, int y){
  for(int i = 0; i < 2; i++);
  boom(x,y);
  
  fill(75,11,0);
  
int w = 50;
  rect(w, 256, 76, 154);
    


fill(88, 158, 37);

ellipse(230,230,142,144);
  arc(206, 293, 71, 63, 0, 1.2 * PI);
  arc(172, 248, 75, 66, 1, 1.4 * PI);
  arc(177, 188, 75, 72, 2, 1.9 * PI);
  arc(237, 165, 69, 75, 3, 2.1 * PI);
  arc(286, 197, 72, 70, 4, 2.4 * PI);
  arc(289, 255, 71, 63, 5, 2.7 * PI);
  arc(259, 294, 68, 64, 5, 3.0 * PI);


}
