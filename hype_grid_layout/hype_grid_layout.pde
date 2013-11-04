/*
	Grid_Layout - Helps to create some randomized structures
	Step 1 :  Creating a Random Squares on the stage using HRect
	Step 2 :  Adding Multiple objects using HDrawablePool
				- Removed the forloop 
				- autoAddToStage()
				- onCreate
	Step 3 :  Adding SVGs
				- instead of HRect adding SVG
				-  enableStyle (false) helps to override the styles of SVG
				-  while using SVG always use strokeJoin(ROUND) & strokeCap(ROUND) to get the better results

	Step 4: Adding colors

*/

HRect d;
HDrawablePool pool;
HColorPool colors;

void setup(){
	size(600, 600);
	H.init(this).background(#202020);
	smooth();

	colors = new HColorPool(#ffffff, #f7f7f7, #ececec, #333333, #0095a8, #00616f, #ff3300, #ff6600);

	pool = new HDrawablePool(100); // 100 objects 
	pool.autoAddToStage()
		//.add ( new HRect(), 20 ) // adding wighting 
		//.add ( new HRect().rounding(10) ) // Amoung the 100 objects we adding 10 rounded squares
		.add ( new HShape("svg1.svg"))  // Using HShape
		.add ( new HShape("svg2.svg"))
		.add ( new HShape("svg3.svg"))
		.add ( new HShape("svg4.svg"))
		.add ( new HShape("svg5.svg"))
		.add ( new HShape("svg6.svg"))
		.onCreate(
				new HCallback() {
					public void run(Object obj)
					{
						//HDrawable d = (HDrawable) obj; // since we removed the HRect commented this line
						HShape	d = (HShape) obj;
						d 
							.enableStyle(false) // Using the specified style
							.strokeJoin(ROUND)
							.strokeCap(ROUND) 
							.strokeWeight(1)
							.stroke(#ff3300)
							.fill(#111111)
							.size( (int)random(25,125) )
							.rotate( (int) random(360) )
							.loc( (int)random(width), (int)random(height))
							.anchorAt(H.CENTER)
						;
						d.randomColors(colors.fillOnly());

					}
				}
		)
		.requestAll()

	;
	
	H.drawStage();
}