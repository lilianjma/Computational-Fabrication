import Turtle.*;
import processing.pdf.*;

boolean savingPDF = false;
int pdfNum = 1;

Turtle t;

void setup() {
  println("Setup Called!");
  size(800,800);
  t = new Turtle(this);
  noLoop();
}

void draw() {
  t.penUp();
  t.goToPoint(400,400);
  t.penDown();
  int dist = 60;
  for (int i = 0; i < 200; i++) {
    for (int j = 0; j < 60; j++) {
          t.forward(0.5);
          t.left(0.5);
    }
    t.forward(dist + 2*i);
    t.right(110);
    //t.drawTurtle();
  }
  
  if (savingPDF) {
    endRecord();
    savingPDF = false;
    println("PDF saved!");
  }
}

void keyPressed() {
  if (key == 's') {  // Press 's' to save the screen as a PDF
    print("Key pressed\n");
    String filename = "Polygon" + pdfNum + ".pdf";
    beginRecord(PDF, filename);
    savingPDF = true;
    pdfNum++;
  }
}