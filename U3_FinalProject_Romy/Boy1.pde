class Boy1
{
  private float _posX;
  private float _posY;
  private PImage _img;
  public boolean _isActive;

  Boy1(float posX, float posY, PImage img, boolean isActive)
  {
    _posX = posX;
    _posY = posY;
    _img = img;
    _isActive = isActive;
    isActive = true;
  }

  private void Move()
  {
    _posX = _posX-random(1, 10);
  }
  public void Update()
  {
    Move();
  }
  public void Draw()
  {
    if (_isActive == true)
    {
      image(_img, _posX, _posY);
    }
  }
  public void isWidth()
  {
    if (_posX<-100)
    {
      _posX = width;
    }
  }
  public void distance()
  {

    if (dist(posBoy.x, posBoy.y, vectorF.x, vectorF.y)<=100)
    {
      _isActive = false;
    } 
  }
}