
print("dit is van opdracht 8.5 ");

size(1500, 1000);
background(162, 232, 200);

int sizeC = 500;
fill(162, 213, 232);
for (int i = 0; i < 50; i++) {
  ellipse(1200, 600, sizeC, sizeC);
  sizeC-=10;
}


print("dit is van opdracht 8.6 ");

int sizeD = 500;
fill(234, 234, 147);
for (int i = 0; i < 50; i++) {
  ellipse(600 - sizeD/2, 900 - sizeD/2, sizeD, sizeD);
  sizeD-=10;
}
