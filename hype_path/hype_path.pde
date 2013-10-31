/*
	Step 1 : Using HPath to draw polygon
	Step 2:  Specify random values to polygon 
	Step 3:   .star( 5,0.5) 
*/

HPath d;

void setup(){

	size(600, 600);
	H.init(this).background(#202020);
	smooth();

	for( int i=0; i<100; i++) {

		d = new HPath();
		d 
		  //.polygon( (int) random(3, 9) ) // how many shapes
		  .star( 5, 0.5)
		  .strokeWeight(1)
		  .stroke(#ff3300)
		  .fill(#111111)
		  .size( (int) random(75,175) )
		  .rotate( (int) random(160))
		  .loc ( (int) random(width) , (int)random(height))
		  .anchorAt(H.CENTER)
		;

		H.add(d);
		  
	}

	H.drawStage();
}

void draw(){
		
}