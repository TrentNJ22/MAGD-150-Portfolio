
PShape sphere, sphere2; 
PImage planet1, planet2;

float x, y, z, scale;

void setup(){
 size(600,500, P3D);

 surface.setResizable(true);
 pixelDensity(displayDensity());
 //I downloaded two images here to use as textures on the spheres. 
 loadImage("planet.jpg");
 loadImage("planet2.jpg");
 //I loaded the spheres as PImages so I could easily wrap a image around them making them look like a planet. 
 sphere = loadShape("sphere.obj");
 sphere.setStroke(false);
 sphere.scale(250, 250, 250);
 sphere.setTexture(loadImage("planet1.jpg"));

 sphere2 = loadShape("sphere.obj");
 sphere2.setStroke(false);
 sphere2.scale(65, 65, 65);
 sphere2.setTexture(loadImage("planet2.jpg"));

 x = width * 1.2 ;
 y = height * .125;
 z = -350;
 scale = min(200, 200) / 2.0;
 
} 
 
void draw(){
  background(0);
// Here I used a variation of the code in your lights example to see how to set up a directional light. 
  directionalLight(250, 300, 400, 0, 0.5, -1);
  lights();  

  sphere.rotateX(0.002);
  sphere.rotateY(0.002);
  sphere.rotateZ(0.002);

  sphere2.rotateX(0.002);
  sphere2.rotateY(0.002);
  sphere2.rotateZ(0.002);

  shape(sphere, width * 0.5, height * 0.5);
  shape(sphere2, width * 0.25, width * 0.2); 
  // I was having issues getting the rectangle here to show up.
  // I copied your code from the mesh example and made some changes to it but I still could not make it appear. 
  pushMatrix();
 
  translate(x, y, z);
  scale(scale);
  // Front
  beginShape();
  fill(150, 100, 20);
  vertex(-1, -1, 1);
  vertex(1, -1, 1);
  fill(150, 100, 20);
  vertex(1, 1, 1);
  vertex(-1, 1, 1);  

  beginContour();
  vertex(-0.5, 0.5, 1);
  vertex(0.5, 0.5, 1);
  vertex(0.5, -0.5, 1);
  vertex(-0.5, -0.5, 1);
  endContour();
  endShape(CLOSE);

  // Right
  beginShape(QUADS);
  fill(150, 100, 20);
  vertex(1, -1, 1);
  vertex(1, -1, -1);
  fill(150, 100, 20);
  vertex(1, 1, -1);
  vertex(1, 1, 1);
  endShape();

  // Back
  beginShape();
  fill(150, 100, 20);
  vertex(1, -1, -1);
  vertex(-1, -1, -1);
  fill(150, 100, 20);
  vertex(-1, 1, -1); 
  vertex(1, 1, -1);
  endShape(CLOSE);

  // Left
  beginShape();
  fill(150, 100, 20);
  vertex(-1, -1, -1);
  vertex(-1, -1, 1);
  fill(150, 100, 20);
  vertex(-1, 1, 1);
  vertex(-1, 1, -1);
  endShape(CLOSE);

  // Bottom
  beginShape();
  fill(150, 100, 20);
  vertex(-1, 1, 1);
  vertex(1, 1, 1);
  fill(150, 100, 20);
  vertex(1, 1, -1);
  vertex(-1, 1, -1);
  endShape(CLOSE);

  // Top
  beginShape();
  fill(150, 100, 20);
  vertex(-1, -1, -1);
  vertex(1, -1, -1);
  fill(150, 100, 20);
  vertex(1, -1, 1);
  vertex(-1, -1, 1);
  endShape(CLOSE);  
  popMatrix();
  
}
