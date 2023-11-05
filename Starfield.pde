Particle[] small = new Particle[1000];

void setup() {
  size (400,400);
  noStroke();
   for (int i = 0; i < small.length; i++) {
    small[i] = new Particle();
   }
    for (int i = 999; i < small.length; i++){
    small[i] = new OddballParticle();
  }
}

void draw() {
  background(33, 190, 222);
  for (int i = 0; i < small.length; i++) {
    small[i].show();
    small[i].move();
  }
}

class Particle {
 double myX, myY, mySpeed, myAngle;
  int myColor;
  
  Particle () {
    myX = 200;
    myY = 200;
    myAngle = Math.random()*2*Math.PI;
    mySpeed = (Math.random()*10);
    myColor = color((int)(Math.random() * 256), (int)(Math.random() * 256), (int)(Math.random() * 256));
  } 
  
void show() {
  fill (myColor);
  ellipse((float)myX, (float)myY, 20,20);
}

void move() {
  myX = myX + (Math.cos(myAngle)*mySpeed);
  myY = myY + (Math.sin(myAngle)*mySpeed);
} 
} 

class OddballParticle extends Particle{
  OddballParticle(){
    myX = 200;
    myY = 200;
    mySpeed = 1;
    
  }
  void show(){
    fill(237, 252, 15);
    rect((float)myX, (float)myY, 20,20);    
  }
  void move(){
    if (mouseX > myX){
      myX = myX+(int)(Math.random()*5)-1;
} 
    else{
      myX = myX+(int)(Math.random()*5)-3;
}
    if (mouseY > myY){
      myY = myY+(int)(Math.random()*5)-1;
} 
    else{
      myY = myY+(int)(Math.random()*5)-3;
  }
}

}




