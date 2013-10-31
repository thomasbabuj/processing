/* 
   Step 1
	smooth() - smoothen the pixel
	adding 100 rectangle with random values for size , rotate angle

	Step 2
	Changing the fill color with aplah and added rounding rect

*/

HRect d;

void setup(){
	size(600,600);
	H.init(this).background(#202020);	
	smooth(); // loads the pixels smoother

	for(int i=0; i<100; i++)
	{
		d = new HRect().rounding(10);
		d
		  .strokeWeight(1)
		  .stroke(#ff3300)
		  .fill(#111111, 200)
		  .size( (int) random(25, 125))
		  .rotate( (int) random(360))
		  .loc( (int) random(width), (int)random(height))
		  .anchorAt(H.CENTER);
		  H.add(d);
	}

	H.drawStage();
}

void draw(){
		
}