/*
A game where the user plays as a bus driver that picks up kids to go to school. The way that the driver picks up the
 kids is by stopping near them. If the driver hits one it is game over. The goal of the game is to pick up 10 kids
 to go to school. The controller will be a steering wheel made from cardboard.
 */
//what did you make? why?  how does it work? hwat were some things that happened throughout the process?
//make bus go faster, work on distance formula
PImage busImg;
PImage kidImg;
PImage school;
PImage treeImg;
PImage tree1Img;
PVector posKid;
PVector velocity;
PVector vectorF;
int degrees;
int posXSchool = 10;
int posYSchool = 10;//height-300;
float theta = 1.0;
Kid kid;
Kid[] kids;
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
  treeImg = loadImage("tree.png");
  treeImg.resize(400, 300);
  tree1Img = loadImage("tree1.png");
  tree1Img.resize(200, 300);
  vectorF = new PVector(width/2, height/2);
  velocity = new PVector(100, 100);
  posKid = new PVector(width-200, height/2);
  degrees = 0;
  bus = new Bus(vectorF.x, vectorF.y, busImg);
  kid = new Kid(posKid.x, posKid.y, kidImg);
  kids = new Kid[4];
  for (int i=0; i<4; i++)
  {
    kids[i] = new Kid(random(450, width), random(0, height), kidImg);
  }
}
void draw()
{
  fill(#A29D9D);
  rect(0, 0, width, height-50);
  fill(#45B244);
  rect(0, height-50, width, height-200);
  //  background(#24F03D); #766B6B
  image(school, posXSchool, posYSchool);
  if (dist(vectorF.x, vectorF.y, posXSchool, posYSchool) <= 500)
  {
    image(school, posXSchool, posYSchool);
    image(kidImg, 100, 200);
  }
  /*if (dist(vectorF.x, vectorF.y, posKid.x, posKid.y) <= 300)
   {
   background(255, 0, 0);
   // posKid.x += width+20;
   }*/
  kid.Draw();
  kid.Update();
  kid.isHeight();
  kid.distance();
  for (int i=0; i<4; i++)
  {
    kids[i].Draw();
    kids[i].Update();
    kids[i].isHeight();
    // kids[i].distance();
  }
  bus.Draw();
  bus.Update();
  bus.isHeight();

  image(tree1Img, 300, height-250);
  image(tree1Img, width/2+400, height-250);
  image(treeImg, -50, height-300);
  image(tree1Img, width/2+200, height-250);
  image(treeImg, 350, height-300);
  image(tree1Img, width/2-50, height-250);
  image(treeImg, width/2, height-300);
  image(treeImg, width/2+400, height-300);
}