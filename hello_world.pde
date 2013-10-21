  // Basic Processing functions
  // point ( x, y )
  // line  ( x1, y1 , x1, y2 )
  // rect ( x,y, width, height )
  // rectMode ( CENTER )
  // ellipse( x, y width, height )
  // ellipseMode ( CENTER );
  // background (0)
  
// This example draw a rectangle and move it on the the screen  


color c = color(0);
float x = 0;
float y = 100;
float speed = 1;


void setup() {
  size( 200, 200 );
}

void draw() {
  background(255);
  move ();
  display();
 
}

void move() {
  
  x = x + speed;
  if ( x > width )  {
    x = 0;
  }
  
}

void display() {
   fill(c);
   rect ( x, y ,30, 10 );
}





