import controlP5.*;

float getal1 = 120;
float btw = 0 ;

ControlP5 cp;

Textfield TF1;
Button knop1;

void setup(){
   size(500,500);
   methode(50);
   
cp = new ControlP5(this);

  //textvak
TF1 = cp.addTextfield("TextField1").setText("").setSize(200,200).setPosition(200,200).setCaptionLabel("");
  //knop.
knop1 = cp.addButton("Knop1"). setCaptionLabel("bereken");
}

void draw(){
background(29,173,168);
}

void methode(float getal){
 btw = getal / 100 * 121;
// btw = (getal1 /100 * 121);
 
 println(btw);
  
}
void Knop1(){
  println(TF1.getText());
 
}

 
