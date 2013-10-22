size ( 400, 400 );
float rand;
color c;

loadPixels();

for ( int i=0; i< pixels.length; i++ )
{
  rand = random( 255);
  c = color (rand);
  pixels[i] = c;
}

updatePixels();

