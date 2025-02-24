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
  int dist = 40;
  t.forward(dist);
  
  t.penUp();
  t.left(90);
  t.forward(dist/2);
  t.left(180);
  t.penDown();
  
  t.forward(dist);
  t.penUp();
  t.right(90);
  t.forward(dist);
  t.right(90);
  t.penDown();
  
  t.forward(dist);

}
