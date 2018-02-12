public void setup()
{
  size(500,500);
  background(0);
}
public void draw()
{
  sierpinski(50,450,300);
}
public void mouseDragged()//optional
{

}

public void sierpinski(int x, int y, int len) 
{
  if(len <=28)
  {
    triangle(x, y, x+len/2, y-len, x+len, y);
  }
  else
  {
    fill(23,43,190);
    sierpinski(x, y,len/2);
    fill(50,150,30);
    sierpinski(x+len/2, y, len/2);
    fill(150,40,40);
    sierpinski(x+len/4, y-len/2, len/2);
  }

}