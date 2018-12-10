class Target{
  PVector position;
  PVector velocity;
  PVector scale;
  float theta;
  Target(){
    position = new PVector(random(95, 450),random(50, 405));
    velocity = new PVector(2.5, 5);
    scale = new PVector(45, 45);
  }
  
  void update(){
    // Here I used the velocity function to change the speed and starting 
    // position of the shapes within a certain area. 
    position.add(velocity);
   if(((position.x+(45/2))> 450) || ((position.x-(45/2))< 50)) {
      velocity.x = velocity.x *-1;
  }
  if (((position.y+(45/2))>450) || ((position.y-(45/2))<50)) {
    velocity.y = velocity.y *-1;
  }
}

  void display() {
    theta = map(mouseX, 0, 450, 0, TWO_PI);
   // Here in the display function I use the map function to make the shapes 
   // move around a certain area. 
    scale.y = map(mouseY, 0, height, height * .075, width * .2);
   // I followed code from the examples in order to make my shapes transform.  
    pushMatrix();
    translate(position.x, position.y);
    rotate(theta);
    scale(scale.x, scale.y);
    //Drawing Target. 
    noStroke();
    fill(255, 11, 0);
    ellipse(0, 0, 1, 1);
    fill(255);
    ellipse(0, 0, .75, .75);
    fill(255,11,0);
    ellipse(0,0,.5,.5);
    popMatrix();


}
  void transformations() {
    surface.setResizable(true);
    surface.setTitle("Transformations");
    pixelDensity(displayDensity());
    
  }
}
