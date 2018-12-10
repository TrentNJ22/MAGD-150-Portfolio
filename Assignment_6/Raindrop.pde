class Raindrop{
  int centerX, centerY;
  int ydirection = 1;
  int yspeed = 1;
  Raindrop(){
    centerX = round(random(0, width));
    centerY = 0;
    println(centerX + centerY);
  }
  
  void display(){
    ellipseMode(CENTER);
    fill(85, 193, 255);
    ellipse(centerX, centerY, 10, 10);
  }
  void move(){
    // Here is where I make the raindrops move down the sketch. 
    centerY = centerY + (yspeed * ydirection);
   
  }
}
