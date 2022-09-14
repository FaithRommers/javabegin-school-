float gewicht = 73.1;
float lengte = 1.81;
float leeftijd = 25;
float BMI = 0;

BMI = gewicht / (lengte * lengte);
BMI *= 10;
BMI = round(BMI);
BMI /= 10;
println(BMI);

size (700,500);
background(158,221,158);

rect(150, 200, 100, 30);
rect(300, 100, 100, 30);
rect(450, 200, 100, 30);

fill(0,0,0);
text("gewicht: " + gewicht + "kg", 155,220);
text("leeftijd:  " + leeftijd + "jaar", 305,120);
text("lengte: " + lengte + "meter", 452,220);

textSize(30);
text("BMI: " + BMI ,300,350);


if(leeftijd < 70){
     fill(255,255,0);
  if (BMI < 18.5){
    fill(0,255,0);
  }else if (BMI < 25){
    fill(255,0,0);
    }else if (BMI < 30){
    }
    
}else{
  if (BMI > 22){
  fill(255,255,0);
  }else if (BMI < 28){
  fill(0,255,0); 
  }else if (BMI < 30){
  fill(255,255,0);
  }
}
