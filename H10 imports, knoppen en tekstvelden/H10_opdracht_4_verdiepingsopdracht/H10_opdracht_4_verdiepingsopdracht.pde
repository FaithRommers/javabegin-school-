import controlP5.*; 
 
ControlP5 cp; 
 
Button knop1; 
Button knop2; 
Button knop3; 
Button knop4; 
 
 
void setup() { 
  size (600, 400); 
  cp = new ControlP5(this); 
 
 //knop 1 de * knop
  knop1 = cp.addButton("Knop1") 
    .setPosition(280, 150) 
    .setSize(50, 50) 
    .setCaptionLabel ("*") 
    .setColorActive(color(3, 168, 158)) 
    .setColorForeground(color(32, 190, 170)) 
    .setColorBackground(color(0, 128, 128)); 
 
// knop 2 de / knop 
  knop2 = cp.addButton("Knop2") 
    .setPosition(340, 150) 
    .setSize(50, 50) 
    .setCaptionLabel ("/"); 
    
     //knop 3 de + knop
  knop3 = cp.addButton("Knop3") 
    .setPosition(400, 150) 
    .setSize(50, 50) 
    .setCaptionLabel ("+") 
    .setColorActive(color(203, 156, 237)) 
    .setColorForeground(color(158, 97, 198)) 
    .setColorBackground(color(101, 38, 142)); 
 
   //knop 4 de - knop
  knop4 = cp.addButton("Knop4") 
    .setPosition(460, 150) 
    .setSize(50, 50) 
    .setCaptionLabel ("-") 
    .setColorActive(color(102, 173, 111)) 
    .setColorForeground(color(57, 127, 66)) 
    .setColorBackground(color(31, 73, 37)); 
 
} 
 
void draw() { 
} 
 
void Knop1 (){ 
 println("*"); 
  
 } 
    
void Knop2(){ 
  println("goed gedaan!"); 
} 
