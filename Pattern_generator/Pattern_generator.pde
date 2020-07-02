import processing.pdf.*; // import PDF library
boolean record; 

// Declare variables (default value = 0)
float n;
float q;
float x;
float y;

float[]cVal={0, width-q*0, 5};// Declare array

Cell c;  // Declare object

int count = 0; // Start delay

void setup() {   
  size(800, 800, P2D);          // P2D Processing 2D graphics renderer
  frameRate(10);
  background(0);
  n = 10;                       // Cells per row
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
    c.move_right();
  }

  if ((count > n) && (count < n+1)) {
    c.build();  
    c.move_down();
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
    count=0;
    setup(); 
  }
}
