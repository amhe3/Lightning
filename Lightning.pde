
int startX = 160;
int startY = 160;
int endX = 160;
int endY = 160;

void setup()
{
  size(300,300);
  background(25, 25, 112);
}
void draw()
{
	while(endY>0)
	{
		endY = startY - ((int) (Math.random()*9));
		endX = startX - ((int) ((Math.random()*18)-9));
		//endY = startY - ((int) ((Math.random()*18)-9));
		//endX = startX - ((int) (Math.random()*9));
		strokeWeight(5);
		stroke((int) (Math.random()*100)+100, (int) (Math.random()*100)+100, (int) (Math.random()*100)+100);
		line(startX, startY, endX, endY);
		startX = endX;
		startY = endY;
	}
	noStroke();
  	fill(0, 100, 0);
  	rect(0, 275, 300, 25); //grass
  	fill(139, 137, 137);
  	rect(0, 0, 300, 13); //cloud
	stroke(0, 0, 0);
	strokeWeight(1);
	fill(209, 201, 201);
	ellipse(160, 289, 70, 20); //side of platform
	ellipse(160, 285, 70, 20); //top platform
	quad(158, 155, 162, 155, 166, 285, 154, 285); //pole
	ellipse(160, 160, 20, 20); //sphere
}

void mousePressed()
{
	background(25, 25, 112);
	startX = 160;
	startY = 160;
	endX = 160;
	endY = 160;
}
