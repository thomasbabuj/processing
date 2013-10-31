HRect d1, d2, d3, d4, d5;

void setup() {

	size(600, 600);
	H.init(this);

	// Adding the drawable to Hype
	d1 = new HRect();
	d1.size(50).rotation(45).anchorAt(H.CENTER).loc(100, height/2);
	H.add( d1 ); 

	d2 = new HRect();
	d2.size(50).rotation(45).anchorAt(H.CENTER).loc(200, height/2);
	H.add( d2 ); 	

	d3 = new HRect();
	d3.size(50).rotation(45).anchorAt(H.CENTER).loc(300, height/2);
	H.add( d3 ); 

	d4 = new HRect();
	d4.size(50).rotation(45).anchorAt(H.CENTER).loc(400, height/2);
	H.add( d4 ); 

	d5 = new HRect();
	d5.size(50).rotation(45).anchorAt(H.CENTER).loc(500, height/2);
	H.add( d5 ); 

	H.drawStage();  // all the elements will be painted on the stage

	line ( 0, height/2, width , height/2 );  // Drawing the line in the center of the screen

	// Drawing a small circle center to the rectangle.

	ellipse (100, height/2, 5, 5);
	ellipse (200, height/2, 5, 5);
	ellipse (300, height/2, 5, 5);
	ellipse (400, height/2, 5, 5);
	ellipse (500, height/2, 5, 5);
}