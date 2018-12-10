int x,y,w,h;
int x1, y1, w1, h1;
int x2, y2, w2, h2;
color windowColor;
color restColor;
color roofColor;
color skyColor;
color grassColor;
color doorColor;
color signColor;
String s;
int circleX, circleY;
int circleSize = 100;
color sunColor;
boolean circleOver = false;

void setup(){
  size(800, 600);
  background(skyColor);
  ellipseMode(CENTER);
  circleX = 75+circleSize;
  circleY = 15+circleSize;
  sunColor = color(255, 249, 67);
  x=0;
  y=400;
  w=800;
  h=300;
  x1=315;
  y1=340;
  w1=45;
  h1=30;
  skyColor = color(88, 178, 191);
  restColor = color(150);
  windowColor = color(255, 255, 15);
  roofColor = color(204, 50, 11);
  grassColor = color(39, 204, 25);
  doorColor = color(127, 67, 44);
  signColor = color(255, 86, 72);
  x2= 575;
  y2=340;
  w2=45;
  h2=30;
  s = "Click Here";
}

void draw(){
  update(mouseX, mouseY);
//Dimension#1
  background(skyColor);
  //grass
 stroke(grassColor);
 strokeWeight(10);
 fill(grassColor);
 rect(x, y, w, h);
 //resturant
 fill(restColor);
 noStroke();
  rect(250, 285, 400, 115);
  //roof
  fill(roofColor);
  quad(200, 300, 300, 215, 600, 215, 700, 300);
  //window
  strokeWeight(2);
  stroke(0);
  fill(windowColor);
  //left window
  rect(x1, y1, w1, h1);
  //right window
  rect(x2, y2, w2, h2);
  //door
  strokeWeight(3);
  stroke(0);
  fill(doorColor);
  rect(450, 400, 15, -45);
  rect(432, 400, 15, -45);
  //sign
  stroke(0);
  fill(0);
  rect(120, 400, 15, -115);
  strokeWeight(2);
  stroke(0);
  fill(signColor);
  ellipse(125, 270, 75, 40);
  //sun
 noStroke();
 fill(sunColor);
  ellipse(circleX, circleY, circleSize, circleSize);
 
 textSize(9);
 fill(0);
 text(s, x1+1, y1+12);
 text(s, x2+1, y1+12);
 textSize(15);
 fill(0);
 text(s, 140, 120);
 
 // conditional. checks mouse position and sees if it is to the right of starting x/ under starting y AND left of x plus width and higher than y plus height
 //if(){
 //houseColor = color()  
   if(mousePressed){
     if(mouseX>x1 && mouseX<x1+w1 && mouseY>y1 && mouseY <y1+h1){
       restColor = color(6, 114, 45);
       windowColor = color(251, 43, 255);
       roofColor = color(155);
       skyColor = color(127, 57, 9);
       grassColor = color(65, 45, 212);
       doorColor = color(0, 191, 10);
       signColor = color(202, 123, 0);
       sunColor = color(20, 255, 247); 
 }
   }
 if(mousePressed){
   if(mouseX>x2 && mouseX<x2+w2 && mouseY>y2 && mouseY<y2+h2){
    restColor = color(202, 123, 0);
    windowColor = color(0, 204, 169);
    roofColor = color(255, 252, 99);
    skyColor = color(226, 2, 0);
    grassColor = color(221, 0, 226);
    doorColor = color(255);
    signColor = color(12, 255, 0);
    sunColor = color(255);  
 }
 }
 
 if(mousePressed){
   if(mouseX>circleX && mouseX<circleX+circleSize && mouseY>circleY && mouseY<circleY+circleSize){
   skyColor = color(88, 178, 191);
  restColor = color(150);
  windowColor = color(255, 255, 15);
  roofColor = color(204, 50, 11);
  grassColor = color(39, 204, 25);
  doorColor = color(127, 67, 44);
  signColor = color(255, 86, 72);
  sunColor = color(255, 249, 67); 
 }
 }
 }
 
 void update(int x, int y){
   if ( overCircle(circleX, circleY, circleSize) ) {
     circleOver = true;
   } else {
     circleOver = false;
   }
 }
 
 void mousePressed() {
   if (circleOver) {
  skyColor = color(88, 178, 191);
  restColor = color(150);
  windowColor = color(255, 255, 15);
  roofColor = color(204, 50, 11);
  grassColor = color(39, 204, 25);
  doorColor = color(127, 67, 44);
  signColor = color(255, 86, 72);
  sunColor = color(255, 249, 67); 
   }
 }
 
 boolean overCircle(int x, int y, int diameter) {
   float disX = x - mouseX;
   float disY = y - mouseY;
   if(sqrt(sq(disX) + sq(disY)) < diameter/2) {
     return true;
   } else {
     return false;
   }
 }
  
