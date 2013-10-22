// HelloWorld Images
// Processing accepts following file formates for images: GIF, JPG< TGA, PNG
PImage img;
PImage img2 = createImage (200, 200, RGB );


void setup(){
  size( 600, 600 );
  img = loadImage ("apple_tree.jpg"); // loadImage takes one argument, a String indicating a filename 
  
}

void draw() {
  background(122, 134, 199);
 // Draw the image to the screen at 0,0
 //image ( img , 0, 0 );  // image object, startingPositionX, startingPositionY
 //image ( img2, 0, 0 );
 
 image ( img, 0, 0 );
 
 img2.loadPixels();
 for ( int i=0; i< img2.pixels.length; i++) { // Changing colors with image
   img2.pixels[i] = color ( random( 255), random( 255) , random( 255) );
 }
 
 img2.updatePixels();
 
 image ( img2 ,200 , 200 );
 
 
}
