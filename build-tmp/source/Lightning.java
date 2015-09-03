import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Lightning extends PApplet {


/*int startX = 150;
int startY = 0;
int endX = 150;
int endY = 0;*/

public void setup()
{
  size(300,300);
  background(25, 25, 112);
  strokeWeight(5);
}
public void draw()
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
	Lightning middle = new Lightning(150, 0, 150, 0);
	Lightning left = new Lightning(10, 0, 10, 0);
	Lightning right = new Lightning(190, 0, 190, 0);
	middle.show();
	left.show();
	right.show();
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
	Lightning(int x, int y, int z, int a)
	{
		startX = x;
		endX = y;
		startY = z;
		endY = a;
	}

	public void show()
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

/*void mousePressed()
{
	background(25, 25, 112);
	startX = 150;
	startY = 0;
	endX = 150;
	endY = 0;
}
*/
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Lightning" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
