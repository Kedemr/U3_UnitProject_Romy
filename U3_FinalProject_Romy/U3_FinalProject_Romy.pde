/*
A game where the user plays as a bus driver that picks up kids to go to school. The way that the driver picks up the
 kids is by stopping near them. If the driver hits one it is game over. The goal of the game is to pick up 10 kids
 to go to school. The controller will be a steering wheel made from cardboard.
 */
//what did you make? why?  how does it work? what were some things that happened throughout the process?
//make bus go faster, work on distance formula
PImage busImg;
PImage kidImg;
PImage school;
PImage treeImg;
PImage tree1Img;
PImage boyImg;
PImage girlImg;
PVector posKid;
PVector velocity;
PVector vectorF;
PVector posBoy;
PVector posBoy1;
PVector posGirl;
int degrees;
int posXSchool = 10;
int posYSchool = 10;
float theta = 1.0;
Kid kid;
Bus bus;
Boy boy;
Boy1 boy1;
Girl girl;

void setup()
{
  fullScreen();
  busImg = loadImage("bus.png");
  busImg.resize(200, 100);
  kidImg = loadImage("kid.png");
  kidImg.resize(100, 100);
  boyImg = loadImage("boy.png");
  boyImg.resize(100, 100);
  girlImg = loadImage("girl.png");
  girlImg.resize(100, 100);
  school = loadImage("school.png");
  school.resize(400, 300);
  treeImg = loadImage("tree.png");
  treeImg.resize(400, 200);
  tree1Img = loadImage("tree1.png");
  tree1Img.resize(200, 200);
  vectorF = new PVector(width/2, height/2);
  velocity = new PVector(100, 100);
  posKid = new PVector(width-200, height/2);
  posGirl = new PVector(width-100, height/2);
  posBoy = new PVector(width/2, height-100);
  posBoy1 = new PVector(width/2+200, height-100);
  degrees = 0;
  bus = new Bus(vectorF.x, vectorF.y, busImg);
  boy = new Boy(posBoy.x, posBoy.y, boyImg, true);
  boy1 = new Boy1(posBoy.x, posBoy.y, boyImg, true);  
  girl = new Girl(posGirl.x, posGirl.y, girlImg, true);
  kid = new Kid(posKid.x, posKid.y, kidImg, true);
}
void draw()
{
  fill(#A29D9D);
  rect(0, 0, width, height-50);
  fill(#45B244);
  rect(0, height-50, width, height-200);
  image(school, posXSchool, posYSchool);
  if (dist(vectorF.x, vectorF.y, posXSchool, posYSchool) <= 500)
  {
    image(school, posXSchool, posYSchool);
    image(kidImg, 100, 200);
    image(boyImg, 150, 200);
    image(boyImg, 250, 200);    
    image(girlImg, 200, 200);
  }

  kid.Draw();
  kid.Update();
  kid.isHeight();
  kid.distance();
  girl.Draw();
  girl.Update();
  girl.isHeight();
  girl.distance();  
  bus.Draw();
  bus.Update();
  image(tree1Img, 300, height-200);
  image(tree1Img, width/2+400, height-200);
  image(treeImg, -50, height-200);
  image(tree1Img, width/2+200, height-200);
  image(treeImg, 350, height-200);
  image(tree1Img, width/2-50, height-200);
  image(treeImg, width/2, height-200);
  image(treeImg, width/2+400, height-200);
  boy.Draw();
  boy.Update();
  boy.isWidth();
  boy.distance();
  boy1.Draw();
  boy1.Update();
  boy1.isWidth();
  boy1.distance();
}