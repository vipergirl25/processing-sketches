void setup(){
  size(400, 400);
  background(#F2D0F0);
}
int frogX;
int frogY;
int hopDistance;
Car c1 = new Car(20, 20, 40, 2);
Car c2 = new Car(40, 183, 40, 3);
Car c3 = new Car(60, 254, 40, 1);
Car c4 = new Car(80, 389, 40, 2);
Car c5 = new Car(20, 20, 40, 40);
Car c6 = new Car(20, 20, 40, 40);
void draw(){
  background(#f2d0f0);
  fill(#1D3B09);
  noStroke();
  ellipse(frogX, frogY, 20, 20);
     if(frogX>=width || frogX<=0){
     frogX=30;
     frogY=30;
   }
   else if(frogY<=0){
     frogX=30;
     frogY=30;
   }
  c1.moveLeft();
  c1.display();
  if(c1.intersects(c1)==true){
    frogX=30;
    frogY=30;
  }
  c2.moveRight();
  c2.display();
  if(c2.intersects(c2)==true){
    frogX=30;
    frogY=30;
  }
  c3.moveLeft();
  c3.display();
  if(c3.intersects(c3)==true){
    frogX=30;
    frogY=30;
  }
  c4.moveRight();
  c4.display();
  if(c4.intersects(c4)==true){
    frogX=30;
    frogY=30;
  }
  if(frogY>=height){
    frogX=(200);
    frogY=height;
    background(#D2F5F4);
    fill(#D2F5F4);
    noStroke();
    ellipse(frogX, frogY, 20, 20);
    fill(#57026F);
    text("Congratulations, you win!", 10, 100);
    textSize(30);
  }
}

void keyPressed()
{
  if(key == CODED){
      if(keyCode == UP)
      {
      frogY-=10;
      }
      else if(keyCode == DOWN)
      {
      frogY+=10;
      }
      else if(keyCode == RIGHT)
      {
      frogX+=10;
      }
      else if(keyCode == LEFT)
      {
      frogX-=10;
      }
   }
}
class Car{
  int carX;
  int carY;
  int carSize;
  int carSpeed;
      boolean intersects(Car car) {
if ((frogY > car.getY() && frogY < car.getY()+50) && (frogX > car.getX() && frogX < car.getX()+car.getSize()))
          return true;
    else 
        return false;
}
  void display() 
  {
    fill(0,255,0);
    rect(carX , carY, carSize, carSpeed);
  }
  void moveLeft(){
    carX+=carSpeed;
    if(carX>=width){
      carX=15;
    }
  }
    void moveRight(){
    carX-=carSpeed;
    if(carX<=0){
      carX=395;
    }
  }
  int getX(){
     return carX;
  }
  int getY(){
    return carY;
  }
  int getSize(){
    return carSize;
  }
  
  Car(int carX, int carY, int carSize, int carSpeed){
    this.carX = carX;
    this.carY = carY;
    this.carSize = carSize;
    this.carSpeed = carSpeed;
  }
}