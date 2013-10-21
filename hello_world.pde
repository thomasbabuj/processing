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

void setup() {

  myCar = new Car();
  
}

void draw() {
  background(random(255));
  myCar.drive();
  myCar.display();
}
