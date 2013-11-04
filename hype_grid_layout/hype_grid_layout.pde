/*
	Grid_Layout - Helps to create some randomized structures
	Step 1 :  Creating a Random Squares on the stage using HRect
	Step 2 :  Adding Multiple objects using HDrawablePool
				- Removed the forloop 
				- autoAddToStage()
				- onCreate

*/

HRect d;
HDrawablePool pool;

void setup(){
	size(600, 600);
	H.init(this).background(#202020);
	smooth();

	pool = new HDrawablePool(100); // 100 objects 
	pool.autoAddToStage()
		.add ( new HRect(), 20 ) // adding wighting 
		.add ( new HRect().rounding(10) ) // Amoung the 100 objects we adding 10 rounded squares
		.onCreate(
				new HCallback() {
					public void run(Object obj)
					{
						HDrawable d = (HDrawable) obj;
						d 
							.strokeWeight(1)
							.stroke(#ff3300)
							.fill(#111111)
							.size( (int)random(25,125) )
							.rotate( (int) random(360) )
							.loc( (int)random(width), (int)random(height))
							.anchorAt(H.CENTER)
						;

					}
				}
		)
		.requestAll()

	;
	
	H.drawStage();
}