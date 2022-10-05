import controlP5.*;

int getal1 = 100;
int btw ;




ControlP5 cp;

Textfield TF1;
Button knop1;

void setup(){
   size(500,500);
   methode (getal1);
   
cp = new ControlP5(this);

  //textvak
TF1 = cp.addTextfield("TextField1").setText("de btw is " + btw).setSize(200,200).setPosition(200,200).setCaptionLabel("Doei");
  //knop.
knop1 = cp.addButton("Knop1"). setCaptionLabel("bereken");
}

void draw(){
background(29,173,168);
}


void methode(int getal1){
  int totaal = (getal1 /100 * 121);
  println(totaal);
  btw = getal1 / 100 *121;
}
void Knop1(){
  println("de btw is " + btw + TF1.getText());
 
}

 
