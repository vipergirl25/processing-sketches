void setup(){
    size(1940, 720);
}
void draw(){

  PImage face = loadImage ("face.jpg");
    background(face);
  face.resize(1940, 720);
    image(face, 0, 0);
    fill(mouseX,random(250),random(250));
    ellipse(1112, 262, 30, 30);
    fill(mouseY,random(250),random(250));
    ellipse(932, 269, 30, 30);
    fill(0,0,0);
    ellipse(1112, 262, 10, 10);
    fill(0,0,0);
    ellipse(932, 269, 10, 10);
    println(mouseX);
    println(mouseY);
  
    
 PImage mustache = loadImage("mustache.png");
  mustache.resize(589, 300);
  image(mustache, mouseX, mouseY);

PImage hat = loadImage("hat.png");
hat.resize(600,437);
image(hat, mouseX, mouseY-500);
  
  
  
  
    
    
  
}