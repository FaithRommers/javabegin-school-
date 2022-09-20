int xWaarde = 20;
int yWaarde = 20; 

void setup(){
  size(1400, 1400);

}

void draw(){
background(146, 151, 232); 

fill(160, 38, 52);
xWaarde = 20;

for (int i = 0; i < 10; i++) { 
  for (int j = 1; j < 10; j++) { 
    
    yWaarde += 10; 
   
   
if(( j % 2 == 0)){ 
  fill(160, 38, 52); 
 
  }else {
  fill(119, 21, 31); 
  //donkerdere rood
 rect(xWaarde - 10, yWaarde, 10, 10);
  rect(xWaarde + 10, yWaarde, 10, 10);
}
rect(xWaarde, yWaarde, 10, 10); 
 
  } 

  yWaarde = 20; 
  xWaarde += 10; 
} 
}

 
//lichtere rood van de muur


 
