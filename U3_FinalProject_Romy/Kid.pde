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
    _posY = _posY-10;
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

    if (_posY<0)
    {
      _posY = _posY + 10;
    }
    if (_posY>height)
    {
      _posY = _posY - 10;
    }
  }
}