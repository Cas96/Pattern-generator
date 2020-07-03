import processing.pdf.*; // import PDF library
boolean record; 

// Declare variables (default value = 0)
float n;
float q;
float x;
float y;

float[]cVal={0, width-q*0, 5};// Declare array

Cell c;  // Declare object

int count;

void setup() {   
  size(800, 800, P2D);          // P2D Processing 2D graphics renderer
  frameRate(30);
  background(0);
  n = 5;                       // Cells per row
  q = width/n;                  // Width of cell
  x = 0.5*q;                  // Initial x value
  y = 0.5*q;             // Initial y value
  c = new Cell(x, y);           // Calls constructor (xpos,ypos,rotation)
}    


void draw() {
  
  
  if (record) {
    beginRaw(PDF, "####.pdf");
  }
  
  // Start counter if value is below n*n
  if (count < n*n){
  count++;
  print("Cell count = ");
  println(count);
  }
  
  if ((count > 0) && (count < n)) {
    c.build(); 
    c.rotate_random();
    c.move_right();
  }

  if ((count > n) && (count < 2*n)) {
    c.build(); 
    c.rotate_random();
    c.move_down();
  }

  if ((count > 2*n) && (count < 3*n)) {
    c.build();  
    c.rotate_random();
    c.move_left();
  }

 if ((count > 3*n) && (count < 4*n-1)) {
    c.build();  
    c.rotate_random();
    c.move_up();
  }

 if ((count > 4*n-1) && (count < 5*n-2)) {
    c.build();  
    c.rotate_random();
    c.move_right();
  }

if ((count > 5*n-2) && (count < 6*n-4)) {
    c.build();  
    c.rotate_random();
    c.move_down();
  }

 if ((count > 6*n-4) && (count < 7*n-6)) {
    c.build();  
    c.rotate_random();
    c.move_left();
  }

if ((count > 7*n-6) && (count < 8*n-9)) {
    c.build();  
    c.rotate_random();
    c.move_up();
  }

if ((count > 8*n-9) && (count < 9*n-14)) {
    c.build();  
    c.rotate_random();
    c.move_right();
  }













  if (record) {
    endRaw();
    record = false;
  }
}


// Press 's' to save to PDF and 'r' to restart
void keyPressed() {

  if (key == 's') {
    record = true;
    println("[save]");
  }
  if (key == 'r') {
    count = 0;
    setup(); 
  }
}
