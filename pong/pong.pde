  int ballX = 550;
  int speed = 20;
  int ballY = 320;
  int speedY = 20;
  int paddleX = mouseX;
  int paddleY = 710;
  int paddleLength = 50;
  import ddf.minim.*;
  Minim minim;
  AudioSample sound;


  PImage backgroundImage;

void setup(){
 minim = new Minim (this);
   sound = minim.loadSample("pong.wav", 128);
size(1080, 720);
background(200, 250, 250);
backgroundImage = loadImage("background.jpg");
}
void draw(){
  background(200, 250, 250);
  image(backgroundImage, 0,0);
  image(backgroundImage, 0, 0, 1080, 720);

  fill(150, 200, 50);
  stroke(250, 250, 250);
  ellipse(ballX, ballY, 30, 30);
  stroke(150, 150, 150);
  fill(250, 100, 100);
  rect(mouseX, paddleY, paddleLength, 10);
  

  if(ballX<=15){
    speed= speed*-1;
 }
  if(ballX>=width-15){
    speed= speed*-1;
  }

  if(ballY<=15){
    speedY= speedY*-1;
  }

    if (ballY > paddleY && ballX > mouseX && ballX < mouseX + paddleLength){
    speedY= speedY*-1;

    } else if (ballY>=height){
        println(ballX);
        println(ballY);
        println(paddleX);
        println(paddleY);
        println(paddleLength);
        
        
      
    exit();

  }
  
    ballX+= speed;
    ballY+= speedY;
  }