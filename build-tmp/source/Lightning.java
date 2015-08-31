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


int startX = 0;
int startY = 150;
int endX = 0;
int endY = 150;

public void setup()
{
  size(300,300);
  background(25, 25, 112);
  strokeWeight(5);
}
public void draw()
{
	double dRandom =  Math.random();

	//stroke((int) (Math.random()*5) + 10);
	//stroke(0);

	while(endX<300)
	{
		int endX = startX + ((int) (dRandom*9));
		int endY = startY + ((int) ((dRandom*18)-9));
		stroke(0);
		line(startX, startY, endX, endY);
		int startX = endX;
		int startY = endY;
	}
}
public void mousePressed()
{
	int startX = 0;
	int startY = 150;
	int endX = 0;
	int endY = 150;
}

  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Lightning" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
