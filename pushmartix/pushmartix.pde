// Push and Pop Matrix with rectangle.
//Push and Pop Matrix will retain the origin position of the stage
// When use push and pop martix it reset the stage to its original posistion after doing some operations
void setup(){

	size(600, 600);
    
    pushMatrix();

    rotate( radians( 45) );
    rect( 100, 100, 50, 50);

    popMatrix();


    pushMatrix();

    rotate( radians( 45) );
    rect( 200, 100, 50, 50);

    popMatrix();

    pushMatrix();

    rotate( radians( 45) );
    rect( 300, 100, 50, 50);

    popMatrix();


    pushMatrix();

    rotate( radians( 45) );
    rect( 400, 100, 50, 50);

    popMatrix();

    pushMatrix();

    rotate( radians( 45) );
    rect( 500, 100, 50, 50);

    popMatrix();    	
}

