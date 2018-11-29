//your code here
void setup()
{
	size(900,900);//your code here
}
void draw()
{
	//your code here
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
		}//your code here
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

