class Bus
{
  private float _posX;
  private float _posY;
  private PImage _img;
  float theta = 10;

  Bus(float posX, float posY, PImage img)
  {
    _posX = posX;
    _posY = posY;
    _img = img;
  }
  void Draw()
  {
    imageMode(CENTER);
    pushMatrix();
    translate(vectorF.x, vectorF.y);
    rotate(-theta);
    image(busImg, 0, 0);
    popMatrix();
    imageMode(CORNER);
  }
  private void Move()
  {
    if (keyPressed)
    {
      if (key == 'd')
      {
        theta-=.04;
      }
      if (key == 'a')
      {
        theta+=0.04;
      }
    }

    velocity.x = cos(-theta);
    velocity.y = sin(-theta);
    vectorF.x = vectorF.x + velocity.x ;
    vectorF.y += velocity.y ;
  }
  public void Update()
  {
    Move();
  }

}