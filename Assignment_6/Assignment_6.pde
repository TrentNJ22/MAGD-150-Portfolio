Raindrop raindrop;
Raindrop raindrop1;
Raindrop raindrop2;
Raindrop raindrop3;
Raindrop raindrop4;
Raindrop raindrop5;
Raindrop raindrop6;
Raindrop raindrop7;
Raindrop raindrop8;

Clouds cloud;
Clouds cloud1;
int x = 50;
void setup() {
  size(275, 275);
  raindrop = new Raindrop();
  raindrop1 = new Raindrop();
  raindrop2 = new Raindrop();
  raindrop3 = new Raindrop();
  raindrop4 = new Raindrop();
  raindrop5 = new Raindrop();
  raindrop6 = new Raindrop();
  raindrop7 = new Raindrop();
  raindrop8 = new Raindrop();

  cloud = new Clouds();
  cloud1 = new Clouds();
}

void draw(){
  background(42, 96, 127);
  while(x<140 & x>170);
 // Here I'm calling the Raindrop class to draw various raindrops in random positions on the sketch.
  raindrop.display();
  raindrop.move();
  raindrop1.display();
  raindrop1.move();
  raindrop2.display();
  raindrop2.move();
  raindrop3.display();
  raindrop3.move();
  raindrop4.display();
  raindrop4.move();
  raindrop5.display();
  raindrop5.move();
  raindrop6.display();
  raindrop6.move();
  raindrop7.display();
  raindrop7.move();
  raindrop8.display();
  raindrop8.move();
  
  // Here I'm calling the clouds class to draw and move on the sketch.
  cloud.display();
  cloud.move();
  cloud1.display();
  cloud1.move();

}
