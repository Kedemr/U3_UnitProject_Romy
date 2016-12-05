/*
A game where the user plays as a bus driver that picks up kids to go to school. The way that the driver picks up the
 kids is by stopping near them. If the driver hits one it is game over. The goal of the game is to pick up 10 kids
 to go to school. The controller will be a steering wheel made from cardboard and two pedals, one for accelerating
 and the other to reverse.
 */
//pushMatrix(), popMatrix(), forward vector
PImage busImg;
PImage kidImg;
PImage school;
PVector position;
PVector velocityUP;
PVector velocityDOWN;
PVector velocityRIGHT;
PVector velocityLEFT;
PVector vectorF;
int degrees;
int posXSchool = 10;
int posYSchool = 10;//height-300;
float theta = 1.0;
Kid[] kids;
Bus bus;

void setup()
{
  fullScreen();
  kids = new Kid[4];
  for (int i=0; i<4; i++)
  {
    //   kids[i] = new Kid(kidImg, random(0, width), random(0,height);
  }
  busImg = loadImage("schoolbus.png");
  busImg.resize(100, 100);
  kidImg = loadImage("kid.png");
  kidImg.resize(100, 100);
  school = loadImage("school.png");
  school.resize(400, 300);
  vectorF = new PVector(250, 250);
  velocityUP = new PVector(0, -10);
  velocityDOWN = new PVector(0, 10);
  velocityRIGHT = new PVector(10, 0);
  velocityLEFT = new PVector(-10, 0);
  degrees = 0;
  
  bus = new Bus(vectorF.x, vectorF.y, busImg);
}

void draw()
{

  background(#24F03D);
  
  bus.Draw();
  bus.Update();
  if (dist(vectorF.x, vectorF.y, posXSchool, posYSchool) < 300)
  {
    background(0);
  }
  image(school, posXSchool, posYSchool);
  int deltaTime = 1/frameCount;

  if (keyPressed && key == 'x')
  {
    pushMatrix();
    translate(vectorF.x, vectorF.y);
    rotate(-theta);
    image(busImg, vectorF.x, vectorF.y);
    popMatrix();
  }
  
  if (key == 'd' == true)
  {/*
    pushMatrix();
    theta = theta - 0.01; 
    rotate(theta);
    image(busImg, 0, 0);
    popMatrix();*/
    if (keyPressed && key == 'w')
    {
      vectorF.x = vectorF.x - vectorF.x; 
      vectorF.y = vectorF.y + vectorF.y;
    }
  }
  if (key == 'a')
  {
    theta = theta +0.01;
    rotate(theta);
  }
  image(busImg, 0, 0);
  
//  rect(posX,posY,100,100);
  
  /* if (keyPressed && key == 'w')
   {
   vectorF.add(velocityUP);
   }
   if (keyPressed && key == 'a')
   {
   vectorF.add(velocityLEFT);
   }  
   if (keyPressed && key == 's')
   {
   vectorF.add(velocityDOWN);
   }
   if (keyPressed && key == 'd')
   {
   vectorF.add(velocityRIGHT);
   }  */
  if (keyPressed && key == 'f')
  {
    pushMatrix();
    // image(busImg, vectorF.x, vectorF.y, 100, 200);
    translate(width/2, height/2);
    rotate(radians(degrees));
    image(busImg, vectorF.x, vectorF.y, 100, 200);
    popMatrix();
    degrees++;
  }
}