/*
  Hype Color Pool
  Step 1:  Creating bunch of squares using HRect
  Step 2:  Adding the HColorPool 
  		   getColor() randomly picks colors from the HColorPool object
  Step 3:  ColorPool Wighting -> assigning the priority levels
*/

HRect d;
HColorPool colors;

void setup(){
	size(600, 600);
	H.init(this).background(#202020);
	smooth();

	//colors = new HColorPool(#FFFFFF, #F7F7F7, #ECECEC, #333333, #0095a8, #00616F, #ff3300, #ff6600);

	colors = new HColorPool()
			.add(#FFFFFF,9)
			.add(#ECECEC,9)
			.add(#cccccc,9)
			.add(#333333,3)
			.add(#0095a8,2)
			.add(#00616f)
			.add(#ff3300)
			.add(#ff6600)
		;	


	for(int i=0; i<100; i++)
	{
		d = new HRect();
		d
			.strokeWeight(1)
			.stroke(#000000)
			.fill( colors.getColor() )
			.size( (int)random(25,155))
			.rotate((int) random(360))
			.loc((int) random(width), (int) random(height))
			.anchorAt(H.CENTER)	
		;
		
		H.add(d);	
	}

	H.drawStage();
}