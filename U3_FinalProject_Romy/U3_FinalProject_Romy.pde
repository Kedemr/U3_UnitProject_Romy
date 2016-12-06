/*
A game where the user plays as a bus driver that picks up kids to go to school. The way that the driver picks up the
 kids is by stopping near them. If the driver hits one it is game over. The goal of the game is to pick up 10 kids
 to go to school. The controller will be a steering wheel made from cardboard and two pedals, one for accelerating
 and the other to reverse.
 */
//make bus go faster, work on distance formula
PImage busImg;
PImage kidImg;
PImage school;
PVector posKid;
PVector velocity;
PVector vectorF;
int degrees;
int posXSchool = 10;
int posYSchool = 10;//height-300;
float theta = 1.0;
Kid kid;
Bus bus;

void setup()
{
  fullScreen();
  busImg = loadImage("bus.png");
  busImg.resize(200, 100);
  kidImg = loadImage("kid.png");
  kidImg.resize(100, 100);
  school = loadImage("school.png");
  school.resize(400, 300);
  vectorF = new PVector(width/2, height/2);
  velocity = new PVector(100, 100);
  posKid = new PVector(width-200, height/2);
  degrees = 0;
  bus = new Bus(vectorF.x, vectorF.y, busImg);
  kid = new Kid(posKid.x, posKid.y, kidImg);
}
void draw()
{

  background(#24F03D);
  if (dist(vectorF.x, vectorF.y, posXSchool, posYSchool) <= 300)
  {
    background(0);
  }
  if (dist(vectorF.x, vectorF.y, posKid.x, posKid.y) <= 300)
  {
    background(255);
    posKid.x = width+200;
    posKid.y = height+200;
    if (dist(vectorF.x, vectorF.y, posXSchool, posYSchool) <= 300)
    {
      background(255, 200);
      image(kidImg, 100, 200);
    }
  } 
  kid.Draw();
  kid.Update();
  kid.isHeight();
  image(school, posXSchool, posYSchool);
  bus.Draw();
  bus.Update();
}