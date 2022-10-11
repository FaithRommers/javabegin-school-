int seconden;
int leftAmount;
int millisLeft;
int aantalSpatie = 0;
//boolean racing = true;

void setup(){
  size(500,500);
}

void draw(){
   background(189,252,201);
   
  seconden = millis()/1000;
  leftAmount = 0 + seconden;
  millisLeft = 1000 - (millis()%1000);
  
  if(leftAmount <= 0){
    leftAmount = 0;
    millisLeft = 0;
}

  void keyPressed (){
  //  racing = false;
 }
}
  
  fill(0,0,0);
  //text("spatie:" + aantalSpatie, 200,200);
  text("seconds left " + leftAmount + "." + nf(millisLeft, 3), 200,220);

}
void keyReleased(){
// if(keyCode == 32 && racing){
  // aantalSpatie++;
// }
}
