/*********  VARIABLES  *********/

// controll which screen is active by settings / updating
// gameScreen variable. it wil display the correct screen according
// to the value of this variable.
//
// 0: Initial Screen
// 1: Game Screen
// 2: Game-over Screen

int gameScreen = 0;
int ballX, ballY;
int ballSize = 20;
int ballColor = color(0);
float gravity = 1;
float ballSpeedVert = 0;

/*********  SETUP BLOCK  *********/

void setup(){
  size(500,500);
  ballX = width/4;
  ballY = height/5;
}



/*********  DRAW BLOCK  *********/

void draw(){
  //Display the contents of the current screen
  if(gameScreen == 0){
    initScreen();
    } else if (gameScreen == 1) {
      gameScreen();
    }else if (gameScreen == 2)  {
      
   }
}



/*********  SCREEN CONTENTS  *********/

void initScreen() {
  // codes of initial screen
  background(0);
  textAlign(CENTER);
  text("Click to Start", height/2, width/2);
}
void gameScreen() {
  // codes of game screen
  background(255);
  drawBall();
  applyGravity();
  keepInScreen();
}
void gameOverScreen() {
  // codes for game over screen
}
void drawBall(){
  fill(ballColor);
  ellipse(ballX, ballY, ballSize, ballSize);
}
void applyGravity(){
ballSpeedVert+= gravity;
ballY += ballSpeedVert;
}
void makeBounceBottom(int surface) {
  ballY = surface-(ballSize/2); 
  ballSpeedVert *= -1;
}
void makeBounceTop(int surface){
  ballY = surface+(ballSize/2);
  ballSpeedVert*= -1;
}
// keep the ball in the screen
void keepInScreen(){
  // ball hits floor
  if (ballY + (ballSize/2) > height) {
    makeBounceBottom(height);
  }
  // ball hits ceiling
  if (ballY - (ballSize/2) < 0){
    makeBounceTop(0);
  }
}  



/*********  INPUTS  *********/

public void mousePressed() {
  // if we are on the initial screen when clicked, start the game
  if (gameScreen==0) {
    startGame();
  }
}


  
/*********  OTHER FUNCTIONS  *********/

  // this methode sets the necessery variables to start the game
void startGame() {
  gameScreen=1;
}
  
