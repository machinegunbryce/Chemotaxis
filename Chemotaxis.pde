Walker bob;
Walker [] army = {new Walker(), new Walker(), new Walker(), new Walker(), };
Walker [] ohio;
int a  = 10;
int b = 10;
void setup() {
  size(500, 500);
  bob = new Walker();
  ohio = new Walker[100];
  for (int i = 0; i < ohio.length; i++) {
    ohio[i] = new Walker( (int)(Math.random()*width), (int)(Math.random()*height) );//second call to new
  }

}
void draw() {
  bob.show();
  bob.walk();
  background(0, 0, 0);
      textSize(40);
  text("click for big dot ", 150, 470);
  for (int i = 0; i < army.length; i++) {
    army[i].walk();
    army[i].show();
  }
  for (int i = 0; i < ohio.length; i++) {
    ohio[i].walk();
    ohio[i].show();
  }
}
  
  void mousePressed()
    {
      a += 3;
      b += 3;
        redraw();
    }

class Walker {

  // mebere variable
  int myX, myY;
  int myColor;
  //member fucniton contsructor inintalize variable
  Walker() {
    myX=width/2;
    myY=height/2;
    myColor = color(225, 255, 255);
  }
  Walker(int x, int y) {//overloading cibstructor
    myX = x;
    myY = y;
    myColor = color ((int)(Math.random()*225), (int)(Math.random()*225), (int)(Math.random()*225));
  }

  void walk() {
    fill(myColor);
    if (mouseX > myX) {
      myX = myX + (int)(Math.random()*4)-1;
    } else {
      myX = myX + (int)(Math.random()*-4)+1;
    }
    if (mouseY > myY) {
      myY = myY + (int)(Math.random()*4)-1;
    } else {
      myY = myY + (int)(Math.random()*-4)+1;
    }
  }
  void show() {
    ellipse(myX, myY, a, b);
    fill(255,255,255);
    triangle(mouseX - 40, mouseY, mouseX - 80, mouseY - 25, mouseX - 80, mouseY + 25);
    ellipse(mouseX-25,mouseY, 80,50);
    

  }
  

  //end of Walker class
}
