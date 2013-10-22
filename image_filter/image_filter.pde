// image processing filters

//Loading two images
PImage flower = loadImage("flower.jpg");
PImage dog  = loadImage ("dog.jpeg");

//Get the image Width and Height
int imgWidth = flower.width;
int imgHeight = flower.height;

//Set the window size based on the image size
size ( imgWidth, imgHeight ); 
// Apply background image
background ( flower );

tint(255);  // image retain its original state
tint(100); //  image appears darker
tint( 255, 127 ); //  retain its original and apply 50% opacity
tint ( 0, 200, 255); // applying RGB colors
tint ( 255, 0, 0, 100 ); // image is tinted red and transparent
image( dog, 0, 0 , 200, 200);
