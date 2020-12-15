import processing.video.*;
// Two global variables
float x;
float y;

PFont f;

// Variable to hold onto Capture object.
Capture video;

void setup() {  
  size(720, 740);  
  background(10);  
  // Start x and y in the center  
  x = width/2;  
  y = height/2;
  // Start the capture process
  video = new Capture(this, width, height);  
  video.start();
   f = createFont("Arial",46,true); 
}

void captureEvent(Capture video) {  
  // Read image from the camera
  video.read();
}

void draw() {
  video.loadPixels();
  float newx = constrain(x + random(-10, 10), 92, width);   
  float newy = constrain(y + random(-10, 10), 92, height-1);
  
  // Find the midpoint of the line
  int midx = int((newx + x) / 2);
  int midy = int((newy + y) / 2);
  // Pick the color from the video, reversing x
  color c = video.pixels[(width-1-midx) + midy*video.width];
  
  // Draw a line from (x,y) to (newx,newy)  
  stroke(c);  
  strokeWeight(10);  
  line(x, y, newx, newy);  
  
  // Save (newx,newy) in (x,y)  
  x = newx;  
  y = newy;
  
   stroke(10);
  line(width/2,0,width/2,height);

  textFont(f);       
  fill(255);

  textAlign(CENTER);
  text("no man can see past the lines in the snow.",width/2,2); 

  textAlign(LEFT);
  text("all eyes see the same while the study of light shows there is no.",width/2,20); 

  textAlign(RIGHT);
  text("This text turned all green and i had no reason to do it.",width/3,3); 
  
    textAlign(CENTER);
  text("no man can see past the lines in the snow.",width/212,160); 

  textAlign(LEFT);
  text("all eyes while the study of light shows there is no.",width/27,20); 

  textAlign(RIGHT);
  text("This text turned all green and i had no reason to do it.",width/4,40);
  
  textAlign(CENTER);
  text("no man can see past the lines in the snow.",width/2,60); 

  textAlign(LEFT);
  text("all eyes see the same while the study of light shows there is no.",width/2,100); 

  textAlign(RIGHT);
  text("This text turned all green and i had no reason to do it.",width/2,140); 
  
    textAlign(CENTER);
  text("no man can see past the lines in the snow.",width/221,60); 

  textAlign(LEFT);
  text("all eyes while the study of light shows there is no.",width/600,220); 

  textAlign(RIGHT);
  text("This text turned all green and i had no reason to do it.",width/490,40);
  
  text("no man can see past the lines in the snow.",width/2,60); 

  textAlign(LEFT);
  text("all eyes see the same while the study of light shows there is no.",width/2,100); 

  textAlign(RIGHT);
  text("This text turned all green and i had no reason to do it.",width/2,140); 
  
    textAlign(CENTER);
  text("no man can see past the lines in the snow.",width/2,60); 

  textAlign(LEFT);
  text("all eyes while the study of light shows there is no.",width/1,20); 

  textAlign(RIGHT);
  text("This text turned all green and i had no reason to do it.",width/4,40);
  
  textAlign(CENTER);
  text("no man can see past the lines in the snow.",width/942,460); 

  textAlign(LEFT);
  text("all eyes see the same while the study of light shows there is no.",width/242,600); 

  textAlign(RIGHT);
  text("This text turned all green and i had no reason to do it.",width/2,540); 
  
    textAlign(CENTER);
  text("no man can see past the lines in the snow.",width/221,660); 

  textAlign(LEFT);
  text("all eyes while the study of light shows there is no.",width/100,120); 

  textAlign(RIGHT);
  text("This text turned all green and i had no reason to do it.",width/290,240);
  
    textAlign(LEFT);
  text("all eyes while the study of light shows there is no.",width/301,320); 

  textAlign(RIGHT);
  text("This text turned all green and i had no reason to do it.",width/404,440);
  
  textAlign(CENTER);
  text("no man can see past the lines in the snow.",width/542,560); 

  textAlign(LEFT);
  text("all eyes see the same while the study of light shows there is no.",width/542,500); 

  textAlign(RIGHT);
  text("This text turned all green and i had no reason to do it.",width/672,640); 
  
    textAlign(CENTER);
  text("no man can see past the lines in the snow.",width/721,760); 

  textAlign(LEFT);
  text("all eyes while the study of light shows there is no.",width/100,720); 

  textAlign(RIGHT);
  text("This text turned all green and i had no reason to do it.",width/90,640);
}
