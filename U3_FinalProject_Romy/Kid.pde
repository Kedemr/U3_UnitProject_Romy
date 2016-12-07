class Kid
{
  private float _posX;
  private float _posY;
  private PImage _img;

  Kid(float posX, float posY, PImage img)
  {
    _posX = posX;
    _posY = posY;
    _img = img;
  }
  private void Move()
  {
    _posY = _posY-random(1,10);
  }
  public void Update()
  {
    Move();
  }
  public void Draw()
  {
    image(_img, _posX, _posY);
  }
  public void isHeight()
  {
    if (_posY<-100)
    {
      _posY = height;
    }
  }
  public void distance()
  {
    if (dist(posKid.x, posKid.y, vectorF.x, vectorF.y)<=300)
    {
      background(255);
     // posKid.x = width+ 20;
    }
  }
}