void setup(){
if (mousePressed){
  fill(random(30),
  random(30),
  random(255));
}
else {
  fill(0,0,0);
}
 
    
  size (500,500);
  background(0,500,500);
 
  }
void draw(){
  noStroke();
  if (mousePressed){
    fill (0,0,0);
  }
  else {
  fill (250,250,250);
  }
  if (mousePressed) {
    fill(random(255),
    random(255),
    200);
  }
  else {
  ellipse(200,200,50,50);
  fill (250,250,250);
  }
  ellipse(300,300,100,100);
 text ("Elena", 10,490) ;
 fill (0,0,0);
 if (mouseX > 250) {
   fill (0,0,250);
 }
 else if (mouseX <250) {
   fill (random(255),
   random(255),
   random(200));
   ellipse(mouseX,mouseY,100,10);
   
   fill (random(255),
   random(255),
   random(255));
   ellipse(mouseX,mouseY,10,10);
   
  
   
 }



     
}

