size(110, 110);
background(255, 255, 255);

int sizeC = 100;
fill(162, 213, 232);
for (int i = 0; i < 5; i++) {
  ellipse(100 - sizeC/2, 100 - sizeC/2, sizeC, sizeC);
  sizeC-=10;
}
