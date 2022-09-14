size(140,140);
background(146,151,232);

fill(146,232,149);
int xWaarde = 20;
int yWaarde = 20;

for(int i = 0; i < 10; i++){
  for(int j = 0; j < 10; j++){
    rect(xWaarde, yWaarde, 10,10);
  yWaarde += 10;
}
yWaarde = 20;
xWaarde += 10;
}
