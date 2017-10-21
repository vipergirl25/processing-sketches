PImage donkey;
PImage tail;
import ddf.minim.*;
AudioSample happySound;
AudioSample sadSound;
void setup(){
 donkey = loadImage("donkey.jpg");
 background(donkey);
 size(612, 467);
 tail = loadImage("tail.jpg");
 Minim minim = new Minim(this);
 happySound = minim.loadSample("61691__ifartinurgeneraldirection__yay.mp3");
 sadSound = minim.loadSample("213019__kingsonone__blue-aww.wav");
 
}
void draw(){
  if(mousePressed){
  image(tail, mouseX-10, mouseY-20);
  }
  fill(250, 47, 38);
  rect(0, 0, 50, 50);
  if(mouseX-10<=50 && mouseY-20<=50){
    background(donkey);
  }
  if(mouseX-10>50 && mouseY-20>50){
    background(250, 250, 250);
  }
  if(mouseX-10>=519-20 || mouseX-10<=519+20 && mouseY-20>=197-20 || mouseY-20<=197+20 && mousePressed){
    happySound.trigger();
  }
  if(mouseX-10!=519-20 || mouseX-10!=519+20 && mouseY-20!=197-20 || mouseY-20!=197+20 && mousePressed){
    sadSound.trigger();
  }
}