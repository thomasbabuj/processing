// Roating text

PFont f;
String message = "Life is beautiful";
float theta;

void setup() {
  
  size(500, 500);
  f = createFont("Arial", 20, true);
  
}

void draw() {
  
   background(255);
   fill(0);
   textFont(f); // set the font
   translate( width/2, height /2 );
   rotate(theta);
   textAlign( CENTER );
   text( message, 0, 0);
   theta += 0.05;
   
}
