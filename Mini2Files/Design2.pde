import Turtle.*;
import processing.pdf.*;

boolean savingPDF = false;
int pdfNum = 3;


Turtle t;

void setup() {
  println("Setup Called!");
  size(1000,1000);
  t = new Turtle(this);
  noLoop();
}

void draw() {
  int dist = 20;
  float n = 6;
  int e = 20;
  int startx = 100;
  int starty = 80;
  stroke(255,0,0);
//t.right(90);
  for (int y = 0; y < 10; y++) {
    
  for (int j = 0; j < 10; j++) {
    t.penUp();
    t.goToPoint(startx+j*(dist+e),starty + y*(dist+e));
    t.penDown();
    for (int i = 0; i < n; i++) {
      t.forward(dist);
      t.left(360/n);
    }
  }
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
