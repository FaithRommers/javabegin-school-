int nummer = 31;
boolean gevonden = false;
int []lengte = {39, 45, 8, 31, 85, 31, 94, 93, 31, 90};

void setup(){
  for(int i = 0; i < lengte.length; i++){
  if (nummer == lengte[i]){
  gevonden = true; 
    }
  }
  if (gevonden){
  println("ja het getal " + nummer + " staat er tussen");
  }else{
    println("helaas het getal " + nummer + " staat er niet tussen ");
  }
}
