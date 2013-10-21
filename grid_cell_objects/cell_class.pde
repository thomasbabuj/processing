// A Cell Class

class Cell {
  // A cell object needs to know about its location in the cell
  // And also its size with the variables x,y,w,h
  
  float x,y; // x,y location
  float w,h; // width and height
  float angle; // Angle for increasing the brightness
  
  // Cell Constructor
  Cell(float tempX, float tempY, float tempW, float tempH, float tempAngle) {
    x = tempX;
    y = tempY;
    w = tempW;
    h = tempH;
    angle = tempAngle;
   }
   
   // increase angle brightness ( Osillate )
   void increaseBrightness() {
      angle += 0.02;
   }
   
   void display() {
     stroke( 255);
     fill( 127 + 127 * sin(angle) );
     rect( x, y, w, h );
   }
}
