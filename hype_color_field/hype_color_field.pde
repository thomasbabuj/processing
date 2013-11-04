/*
  Hype Color Field -   Specifying the fields of colors and it will transition out to specified fill color
  Step 1:  Adding Random squares on the stage
  		 
  Step 2:	Applying the HColorField to the center of the stage

  Step 3:   Adding two points of color ( left and right)
             Left will have 0 x-axis
            This will draw two points ( left and right side of the stage )

*/

HRect d;
HColorField colors;

void setup() {
	size( 600, 600);
	H.init(this).background(#202020);
	smooth();

	colors = new HColorField(width,height)
		//.addPoint( width/2, height/2, #FF3300, 0.3) // Xposition, Yposition, color, radius
		.addPoint( 0, height/2, #FF3300, 0.3)
		.addPoint( width, height/2, #0095a8, 0.3)
		.fillOnly() //applying this to fillonly
		
	;



	for(int i=0; i<100; i++)
	{
		d = new HRect();
		d
			//.strokeWeight(1)
			//.stroke(#ff3300)  -- Removing strokes
			.noStroke()
			.fill(#000000)
			.size( (int)random(25,125) )
			.rotate( (int)random(360) )
			.loc( (int)random(width), (int)random(height) )
			.anchorAt(H.CENTER)
		;

		colors.applyColor(d); //applying the colors to the drawables

		H.add(d);
	}

	H.drawStage();
}
