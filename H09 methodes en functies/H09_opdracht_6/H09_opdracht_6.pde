

void setup(){
  size (500,500); 
}

void draw(){
   background (51, 161, 201);
   drawRightCirkel(400,300,180,5);
}

void drawRightCirkel(int x, int y, int sizeC, int aantal){
 for(int i = 0; i < aantal; i++){
      ellipse(x-sizeC/2, y, sizeC, sizeC);
     sizeC -= 20;
 }
}
