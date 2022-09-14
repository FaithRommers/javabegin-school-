int antwoord = 0;
int getal1 = 0;
int getal2 = 1;

println(0);
println(1);

for(int i = 0; i < 10; i++){
   antwoord = getal1 + getal2;
   println (antwoord);
   getal1 = getal2;
   getal2 = antwoord;
 }
