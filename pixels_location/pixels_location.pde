// Finding what column or row any given pixel is in
/* Logic
 1)  Assume a window or image with given Width and Height
 2)  We then know the pixel array has a total numbers of elements equaling Width * Height 
 3)  For any given X,Y point in the window, the location in our 1 dimensional pixel array is
        Location = X + ( Y * Width )
*/

size ( 500, 500 );
loadPixels();

//Loop through every pixel column
for ( int x=0; x < width; x++) {
  // Loop through every pixel row
  for ( int y =0; y < height; y++ ) {
  
    int loc = x + y * width;;
    
    if( x % 2 == 0 )
    { // If we are on even column
      pixels[loc] = color(random(255), random(255), random(255) );
    } else {
      pixels[loc] = color(random(255), random(255), random(255) );
    }
      
  } // Y loop ends here
} // X loop ends here

updatePixels();
