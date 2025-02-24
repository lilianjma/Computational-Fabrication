import Turtle.*;
import processing.pdf.*;

Turtle t;

void setup() {
  println("Setup Called!");
  size(400,400);
  t = new Turtle(this);
  noLoop();
}

void draw() {
  int width = 20;
  stroke(255,0,0);
  t.forward(width);
  
  t.penUp();
  t.left(90);
  t.forward(width/2);
  t.left(180);
  t.penDown();
  t.forward(width);
  
  t.penUp();
  t.right(90);
  t.forward(width);
  t.right(90);
  t.penDown();
  t.forward(width);
}
