import controlP5.*;

ControlP5 cp;

Textfield TF1;
Textfield TF2;
Button knop1;
Button knop2;
Button knop3;
Button knop4;

void setup() {
    size (600, 400);
 
  cp = new ControlP5(this);

  //tekstvak 1 de linker tekstvak
  TF1 = cp.addTextfield("TextField1")
    .setText("48")
    .setSize(150, 50)
    .setPosition(35, 150)
    .setCaptionLabel("")
    .setAutoClear(false);
    //.setColorLabel(color(0,0,0));
    
    //tekstvak 2 de rechter tekstvak;
  TF2 = cp.addTextfield("TextField2")
    .setText("2")
    .setSize(150, 50)
    .setPosition(200, 150)
    .setCaptionLabel("")
    .setAutoClear(false);

  //knop 1 de * knop
  knop1 = cp.addButton("Knop1")
    .setPosition(360, 150)
    .setSize(50, 50)
    .setCaptionLabel ("*")
    .setColorActive(color(3, 168, 158))
    .setColorForeground(color(32, 190, 170))
    .setColorBackground(color(0, 128, 128));

  // knop 2 de / knop
  knop2 = cp.addButton("Knop2")
    .setPosition(420, 150)
    .setSize(50, 50)
    .setCaptionLabel ("/");

  //knop 3 de + knop
  knop3 = cp.addButton("Knop3")
    .setPosition(480, 150)
    .setSize(50, 50)
    .setCaptionLabel ("+")
    .setColorActive(color(203, 156, 237))
    .setColorForeground(color(158, 97, 198))
    .setColorBackground(color(101, 38, 142));

  //knop 4 de - knop
  knop4 = cp.addButton("Knop4")
    .setPosition(540, 150)
    .setSize(50, 50)
    .setCaptionLabel ("-")
    .setColorActive(color(102, 173, 111))
    .setColorForeground(color(57, 127, 66))
    .setColorBackground(color(31, 73, 37));
}

void draw() {
}

void Knop1 () {
  float antwoord = float(TF1.getText()) * float(TF2.getText()); 

  println( TF1.getText() + "*" + TF2.getText() + " = " + antwoord );
}

void Knop2() {
  float antwoord = float(TF1.getText()) / float(TF2.getText());
    println(TF1.getText() + "/" + TF2.getText() + " = " + antwoord  );
}

void Knop3() {
  float antwoord = float(TF1.getText()) + float(TF2.getText());
  println(TF1.getText() + "+" + TF2.getText() + " = " + antwoord );
}

void Knop4() {
  float antwoord = float(TF1.getText()) - float(TF2.getText());
  println(TF1.getText() + "-" + TF2.getText() + " = " + antwoord);
}
