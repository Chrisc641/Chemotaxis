Cell [] circles;
int j;
boolean clicked = false;

 void setup()   
 {     
 	size(500, 500);
 	background(222, 182, 51);
 	circles = new Cell[300]; 
 	for(int i = 0; i < circles.length; i++)
 	{
 		circles[i] = new Cell();
 	} 
 }  

 void draw()   
 {    
 	background(222, 182, 51);
 	for(j = 0; j < circles.length; j++)
 	{
 		circles[j].move();
 		circles[j].show();
 	}
 	clicked = false; 
 }  

 void mousePressed()
 {
 	clicked = true;
 }

 class Cell    
 {     
 	int x, y;
 	Cell()
 	{
 		x = (int)(Math.random() * 501);
 		y = (int)(Math.random() * 501);
 	}
 	void move()
 	{
 		if(clicked == true)
 		{
 			if(circles[j].x > -1 && circles[j].x < 501)
 			{
 				x = x + (int)(Math.random() * 500 - 250);
 			}
 			if(circles[j].y > -1 && circles[j].y < 501)
 			{
 				y = y + (int)(Math.random() * 500 - 250);
 			}
 		}
 		if(circles[j].x < mouseX)
 		{
 			x = x + (int)(Math.random() * 6 - 2);
 		}
 		else if(circles[j].x > mouseX)
 		{
 			x = x + (int)(Math.random() * 6 - 4);
 		}
 		else if(circles[j].x == mouseX)
 		{
 			x = x + (int)(Math.random() * 51 - 25);
 		}
 		if(circles[j].y < mouseY)
 		{
 			y = y + (int)(Math.random() * 6 - 2);
 		}
 		else if(circles[j].y > mouseY)
 		{
 			y = y + (int)(Math.random() * 6 - 4);
 		}
 		else if(circles[j].y == mouseY)
 		{
 			y = y + (int)(Math.random() * 51 - 25);
 		}
 	}
 	void show()
 	{
 		fill(68, 103, 203);
 		ellipse(x, y , 10, 10);
 	}   
 }