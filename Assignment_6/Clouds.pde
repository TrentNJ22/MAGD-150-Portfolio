class Clouds{
  int centerX;
  int centerY;
  int xdirection = 1;
  int xspeed = 1;
  Clouds(){
  centerX = round(random(0, width));
  centerY = round(random(0, height/2));
  }

void display(){
  ellipseMode(CENTER);
  fill(150);
  noStroke(); 
  ellipse(centerX, centerY, 50, 30);
}

void move(){
  // Here is where I make the clouds move across the screen. I made it so that if the cloud reaches the side of sketch it bounces back.
  centerX = centerX + (xspeed * xdirection);
  if(centerX > width-50  || centerX  < 50){
    xdirection = xdirection * -1;
  }
  
}
}
