int YPos = 2;
float XPos = 958;
int score = 0;
void setup(){
  size(1920, 1080);
  background(#F0B2F5);

}
void draw(){
 background(#F0B2F5);
 fill(#D5E2E3);
 rect(mouseX, 1005, 80, 30);
 println(mouseX);
 println(mouseY);
 noStroke();
 fill(#B2F0F5);
 ellipse(XPos, YPos+=10, 10, 20);
      fill(0, 0, 0);
   textSize(16);
   text("Score: " + score, 300, 50);
 if (YPos>=1035){
   YPos = 2;
   XPos = random(958);
 }


 if (XPos>=mouseX && XPos<=mouseX+80 && YPos>=1005){
   score++;
   YPos = 2;
 }
 if (score==10){
   textSize(16);
   text("You win!", 50, 50);
 }


 
}