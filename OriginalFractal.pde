int x = 0;
int y = 0;
int size = 1000 / 3;

public void setup()
{
  size(1000, 1000);
  background(0);
}

public void draw()
{
  myFractal(x, y, size);
  myFractal(x + size, y + size, size / 3);
}

public void myFractal(int x, int y,  int size)
{
  if (size < 30)
  {
    fill(random(0, 255), random(0, 255), random(0, 255));
    rect (x, y, size, size);
    rect (x + (2 * size), y, size, size);
    rect (x, y + (2 * size), size, size);
    rect (x + (2 * size), y + (2 * size), size, size);
  }
  else
  {
    fill(random(0, 255), random(0, 255), random(0, 255));
    myFractal(x, y, size / 3);
    myFractal(x + (2 * size), y, size / 3);
    myFractal(x, y + (2 * size), size / 3);
    myFractal(x + (2 * size), y + (2 * size), size / 3);
  }
}
