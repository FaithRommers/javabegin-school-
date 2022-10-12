int nummer = 31;
int aantal = 0;
boolean gevonden = false;
int []lengte = {39, 45, 8, 31, 85, 31, 94, 93, 31, 90};

void setup(){
  for(int i = 0; i < lengte.length; i++){
  if (nummer == lengte[i]){
  gevonden = true; 
  aantal++;
    }
  }
  if (gevonden){
  println("ja het getal " + nummer + " staat er " + aantal + " keer tussen" );
  }else{
    println("helaas het getal " + nummer + " staat er niet tussen ");
  }
}
