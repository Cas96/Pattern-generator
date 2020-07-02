//OOP_The class name
class Cell {                                                                   

  //OOP_Data
  float q;                                                                    
  PShape square, triangle_1, triangle_2;
  float xpos;
  float ypos;
  float[]rVal={0, 0.5, 1, 1.5};  // Declare array and hardcode values (0 0.5 1 1.5)
  float rpos;

  //OOP_Constuctor
  Cell(float tempxpos, float tempypos) {                                                                     
    xpos = tempxpos;
    ypos = tempypos;
  }

  //OOP_functionalities    

  void build() {                                                              
    q = width/n;  

    //PShape

    shapeMode(CENTER);

    square = createShape(GROUP);                                                    

    noStroke();

    triangle_1 = createShape(TRIANGLE, 0, 0, 0, q, q, 0);
    triangle_1.setFill(color(42, 157, 143));

    triangle_2 = createShape(TRIANGLE, q, q, q, 0, 0, q);
    triangle_2.setFill(color(38, 70, 83));

    square.addChild(triangle_1);
    square.addChild(triangle_2);

    translate(xpos, ypos);   // Location center 

    rotate(rpos); // Rotates shape  

    shape(square);
  }

  void move_right() { 
    xpos=xpos+q;
  }

  void move_left() { 
    xpos=xpos-q;
  }

  void move_down() { 
    ypos=ypos+q;
  }

  void move_up() { 
    ypos=ypos-q;
  }

  void rotate_random() {
    int index = int(random(rVal.length));  // Get a random element from array
    rpos=rpos+(rVal[index]*PI); // Rotate shape
  }
}
