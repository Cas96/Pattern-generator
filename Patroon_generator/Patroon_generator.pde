Cell    c;

float n;
float q;
float x;
float y;
float r;
int rot;


void setup()  {   
  size(800,800);
  n = 10;                    //Cells per row
  q = width/n;               //Width of cell
  x = height/2;
  y = width/2;
  r = 0;
  c = new Cell(x,y,r);        //Calls constructor (xpos,ypos,rotation(0 0.5 1 1.5))
    
 
}    

void draw()  {    
  background(255);   
  
  c.build(); 



 print(rot);
  
 rot = (int)random(0, 4);

  

}               
