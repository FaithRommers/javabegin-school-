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
float airfriction = 0.0001;
float friction = 0.1;
color racketColor = color(0);
float racketWidth = 100;
float racketHeight = 10;
int RacketBounceRate = 20;
// we will start at 0, but it wil start at 10 for testing
float ballSpeedHorizon = 10;
int wallSpeed = 5;
int wallInterval = 1000;
float lastAddTime = 0;
int minGapHeight = 200;
int maxGapHeight = 300;
int wallWidth = 80;
color wallColors = color(0);
// This arraylist stores data of the gaps between the walls. Actual walls are drawn accordingly.
// [gapWallX, gapWallY, gapWallWidth, gapWallHeight]
ArrayList<int[]> walls = new ArrayList<int[]>();


/*********  SETUP BLOCK  *********/

void setup() {
  size(500, 500);
  ballX = width/4;
  ballY = height/5;
}



/*********  DRAW BLOCK  *********/

void draw() {
  //Display the contents of the current screen
  if (gameScreen == 0) {
    initScreen();
  } else if (gameScreen == 1) {
    gameScreen();
  } else if (gameScreen == 2) {
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
  drawRacket ();
  applyGravity();
  applyHorizontalSpeed();
  keepInScreen();
  watchRacketBounce();
  wallAdder();
  wallHandler();
}
void gameOverScreen() {
  // codes for game over screen
}
void drawBall() {
  fill(ballColor);
  ellipse(ballX, ballY, ballSize, ballSize);
}
void applyGravity() {
  ballSpeedVert+= gravity;
  ballY += ballSpeedVert;
  ballSpeedVert -= (ballSpeedVert * airfriction);
}
void makeBounceBottom(int surface) {
  ballY = surface-(ballSize/2);
  ballSpeedVert *= -1;
  ballSpeedVert -= (ballSpeedVert * friction);
}
void makeBounceTop(int surface) {
  ballY = surface+(ballSize/2);
  ballSpeedVert*= -1;
  ballSpeedVert -= (ballSpeedVert * friction);
}
// keep the ball in the screen
void keepInScreen() {
  // ball hits floor
  if (ballY + (ballSize/2) > height) {
    makeBounceBottom(height);
  }
  // ball hits ceiling
  if (ballY - (ballSize/2) < 0) {
    makeBounceTop(0);
  }
  if (ballX - (ballSize/2) < 0) {
    makeBounceLeft(0);
  }
  if (ballX - (ballSize/2) > width) {
    makeBounceRight(width);
  }
}
void drawRacket() {
  fill(racketColor);
  rectMode(CENTER);
  rect(mouseX, mouseY, racketWidth, racketHeight);
}
void watchRacketBounce() {
  float overhead = mouseY - pmouseY;
  if ((ballX+(ballSize/2) > mouseX - (racketWidth/2)) && (ballX-(ballSize/2) < mouseX + (racketWidth/2))) {
    if (dist(ballX, ballY, ballX, mouseY)<=(ballSize/2)+abs(overhead)) {
      makeBounceBottom(mouseY);
      // racket moving up
      if (overhead<0) {
        ballY += overhead;
        ballSpeedVert += overhead;
      }
    }
  }


  if ((ballX+(ballSize/2) > mouseX - (racketWidth/2)) && (ballX - (ballSize/2) < mouseX + (racketWidth/2))) {
    if (dist(ballX, ballY, ballX, mouseY)<=(ballSize/2) + abs(overhead)) {
      ballSpeedHorizon = (ballX - mouseX)/5;
    }
  }
}
void applyHorizontalSpeed() {
  ballX += ballSpeedHorizon;
  ballSpeedHorizon -= (ballSpeedHorizon * airfriction);
}
void makeBounceLeft(int surface) {
  ballX = surface+(ballSize/2);
  ballSpeedHorizon *= -1;
  ballSpeedHorizon -= (ballSpeedHorizon * friction);
}
void makeBounceRight(int surface) {
  ballX = surface - (ballSize/2);
  ballSpeedHorizon *= -1;
  ballSpeedHorizon -= (ballSpeedHorizon * friction);
}
void wallAdder() {
  if (millis() - lastAddTime > wallInterval) {
    int randHeight = round(random(minGapHeight, maxGapHeight));
    int randY = round(random(0, height - randHeight));
    // {gapWallX, gapWallY, gapWallWidth, gapWallHeight}
    int[] randWall = {width, randY, wallWidth, randHeight};
    walls.add(randWall);
    lastAddTime = millis();
  }
}
void wallHandler() {
  for (int i = 0; i < walls.size(); i++) {
    wallRemover(i);
    wallMover(i);
    wallDrawer(i);
    watchWallCollision(i);
  }
}
void wallDrawer(int index) {
  int[] wall = walls.get(index);
  // get gap wall settings
  int gapWallX = wall[0];
  int gapWallY = wall[1];
  int gapWallWidth = wall[2];
  int gapWallHeight = wall[3];
  // draw actual walls
  rectMode(CORNER);
  fill(wallColors);
  rect(gapWallX, 0, gapWallWidth, gapWallY);
  rect(gapWallX, gapWallY+gapWallHeight, gapWallWidth, height - (gapWallY+gapWallHeight));
}
void wallMover(int index) {
  int[] wall = walls.get(index);
  wall[0] -= wallSpeed;
}
void wallRemover(int index) {
  int [] wall = walls.get(index);
  if (wall[0]+wall[2] <= 0) {
    walls.remove(index);
  }
}
void watchWallCollision(int index) {
  int[] wall = walls.get(index);
  // get gap wall settings
  int gapWallX = wall[0];
  int gapWallY = wall [1];
  int gapWallWidth = wall[2];
  int gapWallHeight = wall[3];
  int wallTopX = gapWallX;
  int wallTopY = 0;
  int wallTopWidth = gapWallWidth;
  int wallTopHeight = gapWallY;
  int wallBottomX = gapWallX;
  int wallBottomY = gapWallY + gapWallHeight;
  int wallBottomWidth = gapWallWidth;
  int wallBottomHeight = height - (gapWallY + gapWallHeight);

  if (
    (ballX+(ballSize/2)>wallTopX) &&
    (ballX-(ballSize/2)<wallTopX+wallTopWidth) &&
    (ballY+(ballSize/2)>wallTopY) &&
    (ballY-(ballSize/2)<wallTopY+wallTopHeight)
    ) {
    // collides with upper wall
  }

  if (
    (ballX + (ballSize/2)>wallBottomX) &&
    (ballX - (ballSize/2)<wallBottomX + wallBottomWidth) &&
    (ballY + (ballSize/2)>wallBottomY) &&
    (ballY - (ballSize/2)<wallBottomY + wallBottomHeight)
    ) {
    // collides with lower wall
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
