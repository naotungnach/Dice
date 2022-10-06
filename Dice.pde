 //class: collection of variables and functions
 //contructors initiALize member variables
int dicesum, diceroll;
void setup()
  {
      noLoop();
      size(500,520);
      background(#C4C6C2);
  }
  Die wghat;
  void draw()
  {
    for(int y = 40; y <480; y=y + 70){
      for(int x = 40; x<480; x = x+70){
         wghat = new Die(x,y);
         wghat.show();
         dicesum = dicesum + diceroll;
      }
    }
    fill(#C4C6C2);
    noStroke();
    rect(30,500,60,520);
    stroke(0);
    fill(0);
    text("Roll: "+dicesum +"!!", 30, 510);
  }
  void mousePressed()
  {
      redraw();
      dicesum = 0;
  }
  class Die //models one single dice cube
  {
      //member variable declarations here
      int myX, myY;
      //int diceroll;
      
      Die(int x, int y) //constructor
      {
         myX = x;
         myY = y;
         roll();
      }
      void roll()
      {
          diceroll = ((int)(Math.random()*6)+1);
          
      }
      void show()
      {
          fill(((int)(Math.random()*256)),((int)(Math.random()*256)),((int)(Math.random()*256)));
          //fill(150);
          ellipse(myX,myY, 60,60); //fix later
          if (diceroll == 1){
            if (Math.random() < 0.5){
              fill(0);
            }
            else{
              fill(225,225,225);
            }
            ellipse(myX,myY,10,10);
          }
          else if (diceroll == 2){
            if (Math.random() < 0.5){
              fill(0);
            }
            else{
              fill(225);
            }
            ellipse(myX-15,myY-15,10,10);
            ellipse(myX+15, myY + 15, 10,10);
          }
          else if (diceroll == 3){
            if (Math.random() < 0.5){
              fill(0);
            }
            else{
              fill(225);
            }
            ellipse(myX,myY,10,10);
            ellipse(myX-15,myY-15,10,10);
            ellipse(myX+15,myY+15,10,10);
          }
          else if (diceroll == 4){
            if (Math.random() < 0.5){
              fill(0);
            }
            else{
              fill(225);
            }
            ellipse(myX+15,myY-15,10,10);
            ellipse(myX -15,myY-15,10,10);
            ellipse(myX+15,myY+15,10,10);
            ellipse(myX-15,myY+15,10,10);
          }
          else if (diceroll == 5){
            if (Math.random() < 0.5){
              fill(0);
            }
            else{
              fill(225);
            }
            ellipse(myX+15,myY-15,10,10);
            ellipse(myX -15,myY-15,10,10);
            ellipse(myX+15,myY+15,10,10);
            ellipse(myX-15,myY+15,10,10);
            ellipse(myX,myY,10,10);
          }
          else{
            if (Math.random() < 0.5){
              fill(0);
            }
            else{
              fill(225);
            }
            ellipse(myX+15,myY,10,10);
            ellipse(myX-15,myY,10,10);
            ellipse(myX -15,myY-15,10,10);
            ellipse(myX+15,myY+15,10,10);
            ellipse(myX-15,myY+15,10,10);
            ellipse(myX+15,myY-15,10,10);
          }
         
      }
  }
