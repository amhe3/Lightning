
int startX = 150;
int startY = 0;
int endX = 150;
int endY = 0;

void setup()
{
  size(300,300);
  background(25, 25, 112);
  strokeWeight(5);
}
void draw()
{
	while(endY<300)
	{
		endY = startY + ((int) (Math.random()*9));
		endX = startX + ((int) ((Math.random()*18)-9));
		stroke((int) (Math.random()*50)+125);
		line(startX, startY, endX, endY);
		startX = endX;
		startY = endY;
	}
	noStroke();
  	fill(0, 100, 0);
  	rect(0, 275, 300, 25); //grass
}
void mousePressed()
{
	background(25, 25, 112);
	startX = 150;
	startY = 0;
	endX = 150;
	endY = 0;
}

