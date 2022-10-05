import controlP5.*;

ControlP5 cp;

Button knop;
Button knop2;


void setup() {
  size (500, 500);
  cp = new ControlP5(this);


  knop = cp.addButton("Knop")
    .setPosition(50, 200)
    .setSize(400, 200)
    .setCaptionLabel ("klik mij")
    .setColorActive(color(3, 168, 158))
    .setColorForeground(color(32, 190, 170))
    .setColorBackground(color(0, 128, 128));


  knop = cp.addButton("Knop2")
    .setPosition(100, 10)
    .setSize(400, 200)
    .setCaptionLabel ("klik mij");
 
}

void draw() {
}

void Knop (){
 println("helaas fout!");
 
 }
   
void Knop2(){
  println("goed gedaan!");
}
 
 
 
