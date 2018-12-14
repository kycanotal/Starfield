
NormalParticle [] Star = new NormalParticle[100];//your code here
void setup()
{
	size(500,500);
	for(int i = 0; i < Star.length; i++)
		Star[i] = new NormalParticle();//your code here
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
		myColor = color(255);
	}
	public void move() {
		myX = Math.cos(myAngle)*mySpeed + myX;
		myY = Math.sin(myAngle)*mySpeed + myY;
	}
	public void show() {
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
	myX = myX + (int) (Math.random() * 5) - 2);
	myY = myY + (int) (Math.random() * 5) - 2);//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}

