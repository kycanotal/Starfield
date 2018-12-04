
NormalParticle Star = new NormalParticle();//your code here
void setup()
{
	size(500,500);//your code here
}
void draw()
{
	Star.move();
	Star.show();//your code here
}
class NormalParticle
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
	//your code here
}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}

