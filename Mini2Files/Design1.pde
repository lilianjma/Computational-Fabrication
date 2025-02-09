import Turtle.*;
import processing.pdf.*;

boolean savingPDF = false;
int pdfNum = 2;

Turtle t;

void setup() {
  println("Setup Called!");
  size(3000,3000);
  t = new Turtle(this);
  noLoop();
}

void draw() {
  stroke(0,0,255);
  t.penUp();
  t.goToPoint(1500,1500);
  t.penDown();
  int dist = 0;
  
  //for (int k = 0; k < 10; k++) {
    for (int i = 0; i < 500; i++) {
      for (int j = 0; j < 10; j++) {
            t.forward(0.2*i);
            t.left(5);
      }
      t.forward(dist + i);
      t.right(110);
    }
    
  if (savingPDF) {
      endRecord();
      savingPDF = false;
      println("PDF saved!");
  }
  //}
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