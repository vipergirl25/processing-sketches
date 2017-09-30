int xpos1=250;
int xpos2=750;
int speed=1;
void setup(){
  size(1000, 1000);
}
void draw(){
  background(250, 250, 250);
  for(int i=100; i>0; i-=10){
    noFill();
    //fill(#D1FCE8);
    ellipse(xpos1+=speed, 100, i, i);
    }
    if (xpos1<0){
      speed=-speed;
    }
    if (xpos1>1000){
      speed=-speed;
    }

 
  for(int i=100; i>0; i-=10){
    noFill();
    //fill(#FCD1FC);
    ellipse(xpos2-=speed, 100, i, i);
  }

  

 

}