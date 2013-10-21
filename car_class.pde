// Car Class
class Car {

    color c;
    float xpos;
    float ypos;
    float xspeed;
    
    Car(color tempC, float tempXpos, float tempYpos, float tempXspeed) {
      c = tempC;
      xpos = tempXpos;
      ypos = tempYpos;
      xspeed = tempXspeed;
    }
    
    void display() {
     rectMode ( CENTER );
     fill ( c );
     rect ( xpos, ypos, 20, 10 );
    }

    void drive () {
      xpos = xpos + xspeed;
      if ( xpos > width ) {
        xpos = 0;
      }
    }
 
}
