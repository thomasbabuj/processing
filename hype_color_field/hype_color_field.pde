/*
  Hype Color Field -   Specifying the fields of colors and it will transition out to specified fill color
  Step 1:  Adding Random squares on the stage
  		 
  Step 2:	Applying the HColorField to the center of the stage

  Step 3:   Adding two points of color ( left and right)
             Left will have 0 x-axis
            This will draw two points ( left and right side of the stage )

  Step 4:   Added top and bottom points and increasing the radius size
  			So, two point will intersect each other and have a different color

  Step 5:  FillAndStroke() and applying alpha to the fill


*/

HRect d;
HColorField colors;

void setup() {
	size( 600, 600);
	H.init(this).background(#202020);
	smooth();

	colors = new HColorField(width,height)
		//.addPoint( width/2, height/2, #FF3300, 0.3) // Xposition, Yposition, color, radius
		.addPoint( 0, height/2, #FF3300, 0.5) // Left side
		.addPoint( width, height/2, #0095a8, 0.5) // right side
		.addPoint( width/2, 0, #ffff00,0.3)  // top side
		.addPoint( width/2, height, #00ff00, 0.3 ) // bottom side
		//.fillOnly() //applying this to fillonly
		.fillAndStroke()
		
	;



	for(int i=0; i<100; i++)
	{
		d = new HRect();
		d
			//.strokeWeight(1)
			//.stroke(#ff3300)  -- Removing strokes
			//.noStroke()
			.strokeWeight(1)
			.stroke(#000000)
			.fill(#000000, 100) //applying alpha
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
