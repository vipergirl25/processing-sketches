void setup() {
  size(500, 500);
}
void draw() {
  background(200, 200, 200);
  noStroke();
  fill(#FC8F8F);
  ellipse(150, 200, 150, 150);
  ellipse(212, 200, 150, 150);
  fill(#8FFC9C);
  rect(176, 103, 12, 32);
  if (mousePressed){
  fill(200, 200, 200);
  ellipse(76, 197, 15, 15);
  }

}