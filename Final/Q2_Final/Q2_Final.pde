float x, y; 
int theta; 
int orbitRadius; 
int mouse;

void setup(){
  size(600, 600); 
}

void draw(){
  background(0, 100, 200); 

  x = cos(radians(theta))* orbitRadius + width/2; 

  ellipse(x, y, 25, 25); 
}
