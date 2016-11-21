/*
A game where the user plays as a bus driver that picks up kids to go to school. The way that the driver picks up the
 kids is by stopping near them. If the driver hits one it is game over. The goal of the game is to pick up 10 kids
 to go to school. The controller will be a steering wheel made from cardboard and two pedals, one for accelerating
 and the other to reverse.
 */
PImage busImgRight;
PImage busImgLeft;
PImage kidImg;
PVector location;
PVector velocity;
void setup()
{
  fullScreen();
  busImgLeft = loadImage("schoolbusleft.png");
  busImgLeft.resize(100, 100);
  /* busImgRight = loadImage("schoolbusright.png");
   busImgRight.resize(100,100);
   */  kidImg = loadImage("kid.png");
  kidImg.resize(100, 100);
  PVector location = new PVector(100, 100);
  PVector velocity = new PVector(10, 0);
}

void draw()
{
  image(busImgLeft, location.x, location.y);
  //image(busImgRight, 0, 0);
//  image(kidImg, 0, 0);
 /* if ( keyPressed && key == 'a')
  {
   
    location.add(velocity);
  }
}