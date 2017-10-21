 int ellipsepos = 347;
  int ellipsepos2 = 110;
  int otherellipsepos = 405;
  int otherellipsepos2 = 110;
void setup(){
 
  size(500, 454);
  PImage catPic = loadImage("cat.png");
  background(catPic);
}
void draw(){
 
   println(mouseX);
  println(mouseY);
  noStroke();
  fill(0, 250, 250);
  ellipse(ellipsepos, ellipsepos2, 30, 25);
  fill(250, 0, 250);
  ellipse(otherellipsepos, otherellipsepos2, 30, 25);
}
  void keyPressed() {
    ellipsepos+= 5;
    ellipsepos2+= 5;
    otherellipsepos+= 5;
    otherellipsepos2+= 5;
  }
   

  
  

  
  
  
  