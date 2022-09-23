void setup(){
 size(800,800);
 background(0,0,0);
 noStroke();
}

void draw(){
  
}

void mouseMoved(){
  int r = mouseX;
  int g = mouseX + mouseY;
  int b = mouseY;
  fill(r,g,b);
  rect(mouseX, mouseY,20,20);
}
