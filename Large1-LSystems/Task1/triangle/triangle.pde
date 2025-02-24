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
  float n = 3;
  stroke(255,0,0);
  for (int i = 0; i < n; i++) {
    t.forward(dist);
    t.left(360/n);
  }
}
