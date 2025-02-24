// ExampleLSystemDesigns - contains helper methods to create and 
// initialize an LSystem
// to set up parameters and init the LSystem (from the main file)

import java.util.HashMap;

// [TODO]: create your own L-System initialization methods
// and use/test in the setup() method of L1LSystemAssignment file. 
// See example for Square Lsystem below.

// Square Lsystem initialization 
// This method returns an Lsystem object that uses
// The rules and axioms for a square based system
LSystem initSquare() {
  // initialize turtle variables
  float moveDist = 10;
  float rotateAngle = 90;
  float scaleFactor = 1;
  
  // The intial axiom / input string
  String axiom = "F+F+F+F";
  
  // Create any production rules
  HashMap<Character, String> rules = new HashMap<>();
  rules.put('F', "F+F-F-FF+F+F-F");
    
  // Create and return the Lsystem
  return new LSystem(axiom, rules, moveDist, rotateAngle, scaleFactor);
}

LSystem initSquare_task2()
{
  String axiom = "F+F+F+F";
  float moveDistance = 10;
  float rotateAngle = 90;
  float scaleFactor = 1;
  HashMap<Character, String> rules = new HashMap<Character, String>();
    rules.put('F', "F+F-F-FF+F+F-F");
    rules.put('+', "+");
    rules.put('-', "-");
  return new LSystem(axiom, rules, moveDistance, rotateAngle, scaleFactor);
}

LSystem initSquare_task3()
{
  String axiom = "F[+F]-F";
  float moveDistance = 100;
  float rotateAngle = 10;
  float scaleFactor = 1;
  HashMap<Character, String> rules = new HashMap<Character, String>();
    rules.put('F', "F[+FF[+F]-F]-F[+F]");
    rules.put('+', "+");
    rules.put('-', "-");
    rules.put('[', "[");
    rules.put(']', "]");
  return new LSystem(axiom, rules, moveDistance, rotateAngle, scaleFactor);
}

LSystem initSquare_Thing()
{
  String axiom = "F[+F]-F";
  float moveDistance = 30;
  float rotateAngle = 60;
  float scaleFactor = 1;
  HashMap<Character, String> rules = new HashMap<Character, String>();
    rules.put('F', "F+C++C-F--FF-C+");
    rules.put('C', "-F+CC++C+F--F-C");
    rules.put('+', "+");
    rules.put('-', "-");
  return new LSystem(axiom, rules, moveDistance, rotateAngle, scaleFactor);
}

LSystem initSquare_maze()
{
  String axiom = "+";
  float moveDistance = 30;
  float rotateAngle = 60;
  float scaleFactor = 1;
  HashMap<Character, String> rules = new HashMap<Character, String>();
    rules.put('F', "+FRF+-F-RF+FR+F++FRF+");
    rules.put('C', "RF+FR+F++FRF+-F-RF+FR");
    rules.put('+', "+");
    rules.put('-', "-");
    rules.put('[', "[");
    rules.put(']', "]");
  return new LSystem(axiom, rules, moveDistance, rotateAngle, scaleFactor);
}

LSystem initSquare_treee()
{
  String axiom = "F";
  float moveDistance = 40;
  float rotateAngle = 20;
  float scaleFactor = 1;
  HashMap<Character, String> rules = new HashMap<Character, String>();
    rules.put('F', "C+[[F]-F]-C[-CF]+F");
    rules.put('C', "CC");
    rules.put('+', "+");
    rules.put('-', "-");
    rules.put('[', "[");
    rules.put(']', "]");
  return new LSystem(axiom, rules, moveDistance, rotateAngle, scaleFactor);
}
