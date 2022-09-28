

void setup(){
  size (700,500);
}


void draw(){
  background(155, 104, 214);
  bos(7,3);
}

void boom(int x, int y){
  fill(75,11,0);
  rect(x-39, y-(-64), 76, 154);
   
fill(88, 158, 37);

ellipse(x,y,142,144);
  arc(x-28, y+63, 71, 63, 0, 1.2 * PI);
  arc(x-60, y-(-16), 75, 66, 1, 1.4 * PI);
  arc(x-51, y-42, 75, 72, 2, 1.9 * PI);
  arc(x+5, y-57, 69, 75, 3, 2.1 * PI);
  arc(x-(-57), y-30, 72, 70, 4, 2.4 * PI);
  arc(x-(-58), y-(-27), 71, 63, 5, 2.7 * PI);
  arc(x-(-29), y-(-61), 68, 64, 5, 3.0 * PI);


}

void bos (int colommen, int rijen){
  for(int i = 0; i< colommen; i++){  
  for (int w = 0; w < rijen; w++){

  boom(i* 100+ 40,w*100 +40);  


     }
  }
  
}
