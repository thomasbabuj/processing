// Push and Pop Matrix with rectangle.
//Push and Pop Matrix will retain the origin position of the stage

void setup(){

	size(600, 600);
    
    pushMatrix();

    rotate( radians( 45) );
    rect( 100, 100, 50, 50);

    popMatrix();


	
}

