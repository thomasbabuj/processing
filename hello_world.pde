  // Basic Processing functions
  // point ( x, y )
  // line  ( x1, y1 , x1, y2 )
  // rect ( x,y, width, height )
  // rectMode ( CENTER )
  // ellipse( x, y width, height )
  // ellipseMode ( CENTER );
  // background (0)
  
// This example draw a rectangle and move it on the the screen  
// Change this to OOP way

Car myCar;
Car blueCar;

void setup() {
  size ( 800, 800 );
  noFill();
  myCar = new Car ( color ( 255, 0, 0), 0, 100, 2 );
  blueCar  = new Car ( color( 140, 100, 130 ), 300, 300, 5);
  
}

void draw() {
  background(random(255));
  myCar.drive();
  myCar.display();
  
  blueCar.drive();
  blueCar.display();
}
