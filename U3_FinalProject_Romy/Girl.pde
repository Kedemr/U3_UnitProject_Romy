class Girl
{
  private float _posX;
  private float _posY;
  private PImage _img;
  public boolean _isActive;

  Girl(float posX, float posY, PImage img, boolean isActive)
  {
    _posX = posX;
    _posY = posY;
    _img = img;
    _isActive = isActive;
    isActive = true;
  }

  private void Move()
  {
    _posY = _posY-5;
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
  public void isHeight()
  {
    if (_posY<-100)
    {
      _posY = height;
    }
  }
  public void distance()
  {

    if (dist(posKid.x, posKid.y, vectorF.x, vectorF.y)<=100)
    {
      _isActive = false;
    }
  }
}