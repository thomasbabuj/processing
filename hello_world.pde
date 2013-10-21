  // point ( x, y )
  // line  ( x1, y1 , x1, y2 )
  // rect ( x,y, width, height )
  // rectMode ( CENTER )
  // ellipse( x, y width, height )
  // ellipseMode ( CENTER );
  // background (0)


color c = color(0);
float x = 0;
float y = 100;
float speed = 1;
float positionX, positionY = 0;

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





