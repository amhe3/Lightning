
int startX = 0;
int startY = 150;
int endX = 0;
int endY = 150;

void setup()
{
  size(300,300);
  background(25, 25, 112);
  strokeWeight(5);
}
void draw()
{
	double dRandom =  Math.random();

	//stroke((int) (Math.random()*5) + 10);
	stroke(0);

	while(endX<300)
	{
		int endX = startX + ((int) (dRandom*9));
		int endY = startY + ((int) ((dRandom*18)-9));
		line(startX, startY, endX, endY);
		int startX = endX;
		int startY = endY;
	}
}
void mousePressed()
{
	int startX = 0;
	int startY = 150;
	int endX = 0;
	int endY = 150;
}

