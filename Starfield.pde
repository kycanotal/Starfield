
Particle [] Star = new Particle[100];//your code here
void setup()
{
	background(0);
	size(500,500);
	for(int i = 0; i < Star.length; i++)
		Star[i] = new NormalParticle();
	Star[0] = new OddballParticle();
	Star[1] = new JumboParticle();//your code here
}
void draw()
{
	for(int i = 0; i < Star.length; i++)
	{Star[i].move();
	 Star[i].show();
	}//your code here
}
class NormalParticle implements Particle
{
	double myX,myY,myAngle,mySpeed;
	int myColor;

	public NormalParticle() {
		myX = 250;
		myY = 250;
		myAngle = Math.random() * 2 * Math.PI;
		mySpeed = Math.random() * 10;
		myColor = color(250);
	}
	public void move() {
		myX = Math.cos(myAngle)*mySpeed + myX;
		myY = Math.sin(myAngle)*mySpeed + myY;
	}
	public void show() {
		fill(250,250,250);
		ellipse((int)myX, (int)myY, 10,10);
	}
	//your code here
}
interface Particle
{
	public void show();
	public void move();//your code here
}
class OddballParticle implements Particle//uses an interface
{
	double myX,myY,myAngle,mySpeed;
	int myColor;
	public OddballParticle () {
	myX = 200;
	myY = 200;
	myAngle = Math.random() * 2 * Math.PI;
	mySpeed = Math.random() * 10;
	myColor = color(100);
	}

	public void move() {
	myX = myX + (int) (Math.random() * 5) - 2;
	myY = myY + (int) (Math.random() * 5) - 2;
	}
	public void show() {
		fill(0,0,100);
		ellipse((int)myX + 30, (int)myY, 70,70);
		fill(0,100,100);
		rect((int)myX - 8,(int)myY - 10,80,30);
	}


	//your code here
}
class JumboParticle extends NormalParticle//uses inheritance
{
	public void show() {
	fill(130,120,135);
	ellipse((int)myX,(int)myY,40,40);
	}//your code here
}

