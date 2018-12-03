int rad = 25;
float xpos, ypos;
float xspeed = 2.5;
float yspeed = 2.5;

float xdirection = 1;
float ydirection = -1;

//vairables for background ellipse
float  x1 = width * .75;
float y1 = height * .75;
float h1 = min(width, height) * .25;
float w1 = h1;


void setup(){
  size(650, 400);
  rectMode(ROUND);
  noStroke();
  ellipseMode(RADIUS);
  xpos = width/2;
  ypos = height/2;
}

void draw(){
 background(41, 199, 204);
 
 //Rectangle
 noStroke();
 fill(26, 74, 127);
 float mx = constrain(mouseX, 400, 275);
 rect(mx-15, 125, 75, 5);
 
 
 //bouncing ball
 xpos = xpos + (xspeed * xdirection);
 ypos = ypos + (yspeed * ydirection);
 if (xpos > width-rad || xpos < rad){
   xdirection = xdirection * -1;
 }
 if (ypos > height-rad || ypos < rad){
   ydirection = ydirection * -1;
 }
 noStroke();
 fill(255, 255, 72);
 ellipse(xpos, ypos, rad, rad);
 println("ball location from center:" + dist(xpos, ypos, width / 2, height / 2));
 println("ball location:" + xpos, ypos);
 
  //background ellipse
 strokeWeight(10);
 stroke(255, 77, 197);
 fill(35, 255, 51);
 ellipse(x1, y1, w1, h1);
 //Floating Triangle

 strokeWeight(2);
 stroke(191, 1, 0);
 fill(127, 1, 0);
 triangle(mouseX, mouseY, mouseX+5, mouseY-10, mouseX+10, mouseY);
 
 println("Frames:" + (frameCount)); 
}
