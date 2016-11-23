/*
A game where the user plays as a bus driver that picks up kids to go to school. The way that the driver picks up the
 kids is by stopping near them. If the driver hits one it is game over. The goal of the game is to pick up 10 kids
 to go to school. The controller will be a steering wheel made from cardboard and two pedals, one for accelerating
 and the other to reverse.
 */
 //pushMatrix(), popMatrix(), forward vector
PImage busImgRight;
PImage busImgLeft;
PImage kidImg;
PVector position;
PVector velocityUP;
PVector velocityDOWN;
PVector velocityRIGHT;
PVector velocityLEFT;
int topSpeed;
PVector vectorF;
void setup()
{
  fullScreen();
  busImgLeft = loadImage("schoolbusleft.png");
  busImgLeft.resize(100, 100);
  kidImg = loadImage("kid.png");
  kidImg.resize(100, 100);
  vectorF = new PVector(100,100);
  //position = new PVector(100, 100);
  velocityUP = new PVector(0, -10);
  velocityDOWN = new PVector(0, 10);
  velocityRIGHT = new PVector(10, 0);
  velocityLEFT = new PVector(-10, 0);
  topSpeed = 15;
}

void draw()
{
  
  background(#24F03D);
  image(busImgLeft, vectorF.x, vectorF.y);
   if (keyPressed && key == 'w')
  {
    vectorF.add(velocityUP);
  }
  if (keyPressed && key == 's')
  {
    vectorF.add(velocityDOWN);
  }
  if (keyPressed && key == 'd')
  {
    vectorF.add(velocityRIGHT);
  }
  if (keyPressed && key == 'a')
  {
    vectorF.add(velocityLEFT);
  }
}