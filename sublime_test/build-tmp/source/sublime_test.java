import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class sublime_test extends PApplet {

public void setup(){
	size( 500, 500);
}

public void draw(){
		
   rect(50, 50, width, height);
}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "sublime_test" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
