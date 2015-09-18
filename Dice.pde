void setup()
{
	size(400, 400);

	textSize(25);
	noLoop();
	
}

int sum=0;

void draw()
{
	background(random(0, 255),random(0, 255),random(0, 255));
	for(int y = 50; y <= 300; y += 60)
	{
		for(int x = 50; x <= 300; x += 60)
		{//put for loop for the dice
    		Die theDice = new Die(x, y);
			theDice.show();
			theDice.roll();//your code here
			sum = sum + theDice.dots;
		}
	}
	fill(255);
	text("Total:" + sum, 150, 375);
}
void mousePressed()
{
	redraw();
	sum = 0;
}
class Die //models one single dice cube
{
	int myX, myY, dots;//variable declarations here
	Die(int x, int y) //constructor
	{
		roll();
		myX = x;
		myY = y;
		dots = (int)(Math.random()*6) +1;     //variable initializations here
	}
	void roll()
	{
		
		//your code here
	}
	void show()
	{
		fill(255);
		rect(myX, myY, 50, 50, 10);//your code here
		if(dots == 1)
		{
			fill(0);
			ellipse(myX +25, myY +25, 10, 10);//middle dot
		}
		if(dots == 2)
		{
			fill(0);
			ellipse(myX +10, myY +10, 10, 10);//top left dot
			ellipse(myX +40, myY +40, 10, 10);//bot right dot
		}
		if(dots == 3)
		{
			fill(0);
			ellipse(myX +10, myY +10, 10, 10);//top left dot
			ellipse(myX +25, myY +25, 10, 10);//middle dot
			ellipse(myX +40, myY +40, 10, 10);//bot right dot
		}
		if(dots == 4)
		{
			fill(0);
			ellipse(myX +10, myY +10, 10, 10);//top left dot
			ellipse(myX +40, myY +10, 10, 10);//top right dot
			ellipse(myX +10, myY +40, 10, 10);//bot left dot
			ellipse(myX +40, myY +40, 10, 10);//bot right dot
		}
		if(dots == 5)
		{
			fill(0);
			ellipse(myX +25, myY +25, 10, 10);//middle dot
			ellipse(myX +10, myY +10, 10, 10);//top left dot
			ellipse(myX +40, myY +10, 10, 10);//top right dot
			ellipse(myX +10, myY +40, 10, 10);//bot left dot
			ellipse(myX +40, myY +40, 10, 10);//bot right dot
		}
		if(dots == 6)
		{
			fill(0);
			ellipse(myX +10, myY +10, 10, 10);//top left dot
			ellipse(myX +40, myY +10, 10, 10);//top right dot
			ellipse(myX +10, myY +40, 10, 10);//bot left dot
			ellipse(myX +40, myY +40, 10, 10);//bot right dot
			ellipse(myX +10, myY +25, 10, 10);//mid left dot
			ellipse(myX +40, myY +25, 10, 10);//mid right dot
		}
	}
}
