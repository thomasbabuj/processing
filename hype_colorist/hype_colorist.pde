/*
	HPixel_Colorist
	Using a photograph to get the colors 	
	Step 1:  Adding HRect based squares 
	Step 2:  Adding image on the background
	Step 3:  Reduce the square size and add HPixelColor to get the colors from the image
	Step 4:  Removing the image from the background
	Step 5:  Change HPixelColorist Properites from fillOnly to strokeOnly
	Step 6:  Applying fill and stroke properties
	Step 7:  Just passing the image for coloring and removing fillAndStroke()
*/

HRect d;
HPixelColorist colors;


void setup(){
	size(600, 600);
	H.init(this).background(#202020);
	smooth();

	//H.add( new HImage("kelp.jpg"));

	// Takes colors from the an image and apply those colors to our squares
	//colors = new HPixelColorist("kelp.jpg").fillOnly();
	//colors = new HPixelColorist("kelp.jpg").strokeOnly();
	//colors = new HPixelColorist("kelp.jpg").fillAndStroke();
	colors = new HPixelColorist("kelp.jpg");


	for(int i=0; i<100; i++) {
		d = new HRect();
		println( d.x() );
		d
			.strokeWeight(1)
			//.stroke(#000000)
			//.fill(#111111)  // removing this because in pixelcolorst we are applying fillOnly
			//.fill(#111111) // added back because we are applying colorst to strokeOnly 
			// The above code was removed, because we are applying fillAndStroke
			// Inorder to see the fill and stroke clearly we are applying alpha(100)

			//.alpha(100)

			.stroke( colors.getColor( d.x(), d.y() ))
			.fill( colors.getColor( d.x(), d.y() ), 100 )

			.size( (int)random(25, 125))
			.rotate( (int)random(360) )
			.loc( (int)random(width), (int)random(height))
			.anchorAt(H.CENTER)
		;

		colors.applyColor(d); // applying colors to the square
		
		H.add(d);	
	}

	H.drawStage();
}