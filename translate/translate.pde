//  Adding translate
//  Translate will move stage to given position and then rotate then draw the rect

void setup(){

	size( 600, 600)	;

	pushMatrix();
		translate(100, 100);
		rotate(45);
		rect(0, 0, 50, 50);
	popMatrix();

	pushMatrix();
		translate(200, 100);
		rotate(45);
		rect(0, 0, 50, 50);
	popMatrix();

	pushMatrix();
		translate(300, 100);
		rotate(45);
		rect(0, 0, 50, 50);
	popMatrix();

	pushMatrix();
		translate(400, 100);
		rotate(45);
		rect(0, 0, 50, 50);
	popMatrix();

	pushMatrix();
		translate(500, 100);
		rotate(45);
		rect(0, 0, 50, 50);
	popMatrix();
}

