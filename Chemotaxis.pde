class Bacteria{
  float myX;
  int myY;
  float mySpeed;
  int mySize1;
  int mySize2;
  int myColor;
  boolean popped;
  
  Bacteria(){
    myX = (int)(Math.random() * 600);
    myY = (int)(Math.random() * 600);
    mySize1 = (int)(Math.random() * 70 + 20);
    mySize2 = (int)(Math.random() * 70 + 20);
    mySpeed = (int)(Math.random() * 20 + 1);
    myColor = color((int)(Math.random() * 100 + 155), (int)(Math.random() * 100 + 155), (int)(Math.random() * 100 + 155));
  }
  
  void move(){
    myX = myX + (int)(Math.random() * 15) - 7;
    myY = myY + (int)(Math.random() * 15) - 7;
    //if (myX < 0){
     // myX = (int)(Math.random() * 30 + 390);
   // }
  }
  
  void show(){
    if(dist(mouseX, mouseY, myX, myY) < 20)
    {
      popped = true;
    }
    if (keyPressed == true)
    {
      popped = false;
    }
    if (popped == false) {
    noStroke();
    fill(myColor, (int)(Math.random() * 100 + 70));
    ellipse(myX, myY, mySize1, mySize2);
    }
  }
}
//Bacteria pop;
Bacteria[] pop;
void setup(){
  size(600, 600);
  pop = new Bacteria[75];
  for (int i = 0; i < pop.length; i ++) {
    pop[i] = new Bacteria();
  }
  //pop = new Bacteria();
}

void draw(){
  background(75, 80, 30);
  for (int i = 0; i < pop.length; i ++) {
    pop[i].move();
    pop[i].show();
  }
  //pop.rise();
 // pop.show();
}
