int x = 0;
int y = 0;
int s = 1000 / 3;

public void setup()
{
  size(1000, 1000);
  background(0);
}

public void draw()
{
  myFractal(x, y, s);
  myFractal(x + s, y + s, s / 3);
}

public void myFractal(int x, int y,  int big)
{
  if (size < 30)
  {
    fill(random(0, 255), random(0, 255), random(0, 255));
    rect (x, y, s, s);
    rect (x + (2 * s), y, s, s);
    rect (x, y + (2 * s), s, s);
    rect (x + (2 * s), y + (2 * s), s, s);
  }
  else
  {
    fill(random(0, 255), random(0, 255), random(0, 255));
    myFractal(x, y, s / 3);
    myFractal(x + (2 * s), y, s / 3);
    myFractal(x, y + (2 * s), s / 3);
    myFractal(x + (2 * s), y + (2 * s), s / 3);
  }
}
