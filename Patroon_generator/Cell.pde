//OOP_The class name
class Cell{                                                                   

//OOP_Data
  float q;                                                                    
  PShape square, triangle_1, triangle_2;
  float xpos;
  float ypos;
  float r;

 //OOP_Constuctor
  Cell(float tempxpos, float tempypos, float tempr) {                                                                     
  xpos = tempxpos;
  ypos = tempypos;
  r = tempr;
  
  }

//OOP_functionalities    
    
    void build(){                                                              
    q = width/n;  

//PShape
  
  square = createShape(GROUP);                                                    
                                                                               
  noStroke();
  
  triangle_1 = createShape(TRIANGLE, 0,0, 0,q, q,0);
  triangle_1.setFill(color(42,157,143));
  
  triangle_2 = createShape(TRIANGLE, q,q, q,0, 0,q);
  triangle_2.setFill(color(38,70,83));
                                                                                      
  square.addChild(triangle_1);
  square.addChild(triangle_2);
 
  translate(xpos, ypos);   //Location top left corner   
   
  rotate(r*PI);
  
  shape(square);   
 
  
    }
    
}
