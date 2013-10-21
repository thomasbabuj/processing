// 2D Array of objects
Cell [][] grid;

int cols = 10;
int rows = 10;
int screenWidth = 200;
int screenHeight = 200;
int cellSize = screenWidth / rows; 



void setup() {
  size( screenWidth, screenHeight );
  grid = new Cell[cols][rows];
  for ( int i=0; i< cols; i++ ) {
    for( int j=0; j < rows; j++ ) {
      // Initialize each objects
      grid[i][j] = new Cell( i*cellSize, j*cellSize, cellSize, cellSize, i+j );
    } // end of j loop
  } // end of the i loop
}

void draw() { 
  background(0);
  
  for( int i=0; i < cols; i++ ) {
    for ( int j=0; j < rows; j++ ) {
      // Osillate and display each object
      grid[i][j].increaseBrightness();
      grid[i][j].display();
    } // end of j loop
  } // end of i loop
}



