//Target target;
Target[] targets = new Target[5];
String s = "HIT THE TARGET";
String t = "WIN A PRIZE";

void setup(){
  size(500, 500);
  background(255, 11, 0);
  //target = new Target();
  for (int i = 0; i < targets.length; i++){
  targets[i] = new Target();

}
}

void draw(){
    background(255, 11, 0);
  fill(255);
  rect(50, 50, 400, 400);
  
  fill(255);
  textSize(15);
  text(s, 175, 20, 300, 20);
  textSize(15);
  text(t, 175, 470, 300, 470);
  
   for (int i = 0; i < targets.length; i++){

  targets[i].update();
  targets[i].display();
  targets[i].transformations();
   }
  
  
}
