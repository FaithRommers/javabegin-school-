import controlP5.*;

ControlP5 cp;

Textfield TF1;
Button knop1;

void setup(){
   size(500,500);
   
cp = new ControlP5(this);

  //textvak
TF1 = cp.addTextfield("TextField1").setText("eyyy").setSize(200,200).setPosition(200,200).setCaptionLabel("Doei");
  //knop.
knop1 = cp.addButton("Knop1"). setCaptionLabel("bereken");
}

void draw(){
background(29,173,168);
}

void Knop1(){
  println("ellooooo " + TF1.getText());
}
