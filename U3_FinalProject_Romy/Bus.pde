//rectMode(CENTER) sets the parameters of the location to be in the center of the square instead of the corner.
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

  public void isHeight()
  {
    if (_posY<0)
    {
      _posY = height;
    }
    if(_posY>height)
    {
      _posY = 0;
    }
    if(_posX<0)
    {
     _posX = width; 
    }
    if(_posX>width)
    {
     _posX = 0; 
    }
  }
}