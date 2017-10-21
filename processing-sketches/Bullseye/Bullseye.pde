void setup(){
  size(500, 500);
}
void draw(){
  
  for(int i=100; i>0; i-=10){
  noFill();
  fill(#F0DAED);
  if (i % 20==0){
  fill(#DAEEF0);
  }
  ellipse(250, 250, i, i);
  }
  
  
}