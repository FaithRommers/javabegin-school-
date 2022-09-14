size(140, 140);
background(146, 151, 232);

fill(160, 38, 52);
int xWaarde = 20;
int yWaarde = 20;

for (int i = 0; i < 10; i++) {
  for (int j = 1; j < 10; j++) {
    rect(xWaarde, yWaarde, 10, 10);
    yWaarde += 10;
  
  
if( (i % 2 == 0) == ( j % 2 == 0))
  fill(160, 38, 52);

else
  fill(82, 175, 242);
  }
  yWaarde = 20;
  xWaarde += 10;
}
