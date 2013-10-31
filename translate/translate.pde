//  Adding translate
//  Translate will move stage to given position and then rotate then draw the rect

// Step3 
// Moving the rect in the center of the screen


// 45 deg % 5 rect = 9 - to check how the rotate happens

// In order to make the rect with rotate to be centered , since we already rotate the rect the with and height is not 50% anymore. 
// So we need to calculate the width and height of the roatated rect and apply

// Step 4
// instead of calculating the width and height of the roated rect
// now we can use the rectMode ( CENTER )

void setup(){

	size( 600, 600)	;

	rectMode( CENTER ); // now the anchor for the rotate is the center of the stage
	
	pushMatrix();
		translate(100, height/2);
		rotate(radians(9*1));
		rect(0, 0, 50, 50);
	popMatrix();

	pushMatrix();
		translate(200, height/2);
		rotate(radians(9*2));
		rect(0, 0, 50, 50);
	popMatrix();

	pushMatrix();
		translate(300, height/2);
		rotate(radians(9*3));
		rect(0, 0, 50, 50);
	popMatrix();

	pushMatrix();
		translate(400, height/2);
		rotate(radians(9*4));
		rect(0, 0, 50, 50);
	popMatrix();

	pushMatrix();
		translate(500, height/2);
		rotate(radians(9*5));
		rect(0, 0, 50, 50);
	popMatrix();

	// Adding line to confirm the position
	line(0, height/2, width, height/2);
}

