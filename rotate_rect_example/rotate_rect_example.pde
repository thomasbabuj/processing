HRect d1;

void setup() {

	size(600, 600);
	H.init(this);

	d1 = new HRect();
	d1.size(50).rotation(45).anchorAt(H.CENTER).loc(100, height/2);
	H.add( d1 ); // Adding the drawable to Hype

	H.drawStage();  // all the elements will be painted on the stage

	line ( 0, height/2, width , height/2 );  // Drawing the line in the center of the screen

	// Drawing a small circle center to the rectangle.

	ellipse (100, height/2, 5, 5);
	ellipse (100, height/2, 5, 5);
	ellipse (100, height/2, 5, 5);
	ellipse (100, height/2, 5, 5);
	ellipse (100, height/2, 5, 5);
}