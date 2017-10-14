int Waldox = (607);
int Waldoy = (22);
void setup() {
      PImage waldo = loadImage("waldo.jpg"); // 5. Change this to match your file name.
      size(800, 800);
      doh = minim.loadSample("homer-doh.wav");
      woohoo = minim.loadSample("homer-woohoo.wav");
      waldo.resize(800,800);
      image(waldo, 0, 0);
      
}

void draw() {
      // 6. Use this print statement to find out the coordinates of Waldo
      //
      println("X: " + mouseX + " Y: " + mouseY); 
    

      // 7. If the mouse is on Waldo, print “Waldo found!”
      if(mouseX == Waldox && mouseY ==Waldoy){
        println("Waldo found!");
        playWoohoo();
      }

      // 8. If Waldo is found, also use the method below to play “Woohoo”
      // Change the name of the sound file if you need to 
      // 9. If the mouse is pressed and they’re not on Waldo, play “Doh”
      if(mousePressed && mouseX!= Waldox && mouseY!= Waldoy){
      playDoh();
      }
      // Change the name of the sound file if you need to 
}

void playWoohoo() {
     woohoo.stop();
     woohoo.trigger();
}

void playDoh() {
     doh.stop();
     doh.trigger();
}

import ddf.minim.*;
Minim minim = new Minim(this); 
AudioSample doh;// = minim.loadSample("homer-doh.wav");
AudioSample woohoo;// = minim.loadSample("homer-woohoo.wav");