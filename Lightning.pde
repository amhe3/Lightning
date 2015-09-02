
/*int startX = 150;
int startY = 0;
int endX = 150;
int endY = 0;*/

void setup()
{
  size(300,300);
  background(25, 25, 112);
  strokeWeight(5);
}
void draw()
{
	/*while(endY<300)
	{
		endY = startY + ((int) (Math.random()*9));
		endX = startX + ((int) ((Math.random()*18)-9));
		stroke((int) (Math.random()*100)+100, (int) (Math.random()*100)+100, (int) (Math.random()*100)+100);
		line(startX, startY, endX, endY);
		startX = endX;
		startY = endY;
	}*/
	Lightning middle = new Lightning(150, 0);
	Lightning left = new Lightning(10, 0);
	Lightning right = new Lightning(190, 0);
	middle.bolt();
	left.bolt();
	right.bolt();
	noStroke();
  	fill(0, 100, 0);
  	rect(0, 275, 300, 25); //grass
  	fill(139, 137, 137);
  	rect(0, 0, 300, 13); //cloud
}

class Lightning
{
	/*int startX = 150;
	int startY = 0;
	int endX = 150;
	int endY = 0;*/
	int startX, startY, endX, endY;
	Lightning (int x, int y)
	{
		startX = x;
		endX = x;
		startY = y;
		endY = y;
	}
	void bolt()
	{
		while(endY<300)
		{
			endY = startY + ((int) (Math.random()*9));
			endX = startX + ((int) ((Math.random()*18)-9));
			stroke((int) (Math.random()*100)+100, (int) (Math.random()*100)+100, (int) (Math.random()*100)+100);
			line(startX, startY, endX, endY);
			startX = endX;
			startY = endY;
		}
	}
}

void mousePressed()
{
	background(25, 25, 112);
	startX = 150;
	startY = 0;
	endX = 150;
	endY = 0;
}

