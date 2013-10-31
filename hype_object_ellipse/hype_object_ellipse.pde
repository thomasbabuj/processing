/*
	Drawing elipses

	Step 1 - drawing the 100 ellipses 
	Step 2  - Change the size to random values
*/

HEllipse d;

void setup(){
	size(600, 600);
	H.init(this).background(#202020);
	smooth();

	for(int i=0; i<100; i++)
	{
		d = new HEllipse();
		d
		  .strokeWeight(1)
		  .stroke(#ff3300)
		  .fill(#111111)
		  .size((int)random(25,255), (int)random(50,150))
		  .rotate((int) random(360) )
		  .loc( (int)random(width), (int)random(height))
		  .anchorAt(H.CENTER)
		 ;

		 H.add(d);
	}

	H.drawStage();
}

void draw(){
		
}