 int zoekNummers = 9;
 boolean gevonden = false;
 int index = 0;
 int positie = 0;
 int[] getallen = {10,8,7,36,54,89,12,9,3,15,45};
 
 void setup(){
   for(int i = 0; i < getallen.length; i++){
     if(getallen[i] == zoekNummers){
     gevonden = true;
     index = i;
     positie = i + 1;
   }
 }
 
 if (gevonden){
   println("Het getal is gevonden op index " + index + " en dit is de positie " + positie);
 }else{
   println("Niet gevonden");
 }
 }
