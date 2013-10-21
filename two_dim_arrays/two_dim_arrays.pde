
// Program using two-dimensional arrays to draw a grayscale image.

size( 500, 500);
int cols = width;
int rows = height;

// Declare 2D Array
int [][] myArray = new int[cols][rows];

// Initialize 2D array values
for ( int i=0; i < cols; i++ )
  {
     for ( int j=0; j < rows; j++ ) 
     {
        myArray[i][j] = int(random(255));
     }
  }
  
// Draw Points

for( int i=0; i< cols; i++ )
{
  for ( int j=0; j < rows; j++ ) 
  {
    stroke( myArray[i][j] );
    point (i, j);
  }
}
