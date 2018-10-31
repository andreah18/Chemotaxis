 Walker[] tim;
boolean alive =  true;
void setup()
{
  size(500, 500);
  tim = new Walker[15];
  for(int i=0; i < tim.length; i++)
    tim[i] = new Walker();
}

void draw()
{
  background(27, 78, 111);
  for(int i=0; i < tim.length; i++)
  {
    tim[i].show();
    tim[i].walk();
  }
}

class Walker
{
  int myX;
  int myY;
 
  Walker()
  {
    myX = myY = 250;
  }
  void walk()
  {
    myX = myX + (int)(Math.random()*7)-3;
    
    myY = myY + (int)(Math.random()*7)-3;
  }
  void show()
  {
    ellipse(myX, myY, 20, 20);
  }
}  