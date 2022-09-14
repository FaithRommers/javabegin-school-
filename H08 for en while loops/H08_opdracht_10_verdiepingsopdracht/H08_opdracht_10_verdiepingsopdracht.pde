size(400, 400);
background(255, 255, 255);

int xWaarde = 10;
int yWaarde = 10;

for (int i = 0; i < 5; i++) {
  for (int j = 0; j < 1; j++) {
    rect(xWaarde, yWaarde, 10, 10);
    yWaarde += 10;
  }
  yWaarde += 1;
  xWaarde += 10;
}
