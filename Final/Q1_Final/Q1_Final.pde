PVector pos, vel, accel; 

void setup(){
  size(600, 600); 

  pos = new PVector(width/2, 25); 
  vel = new PVector(5, 0);
  accel = new PVector (5,0);
  

  smooth(); 
}

void draw(){
  background(0); 

  ellipse(pos.x, pos.y, 25, 25); 

  if(pos.y >= height){
    pos.y = 0;

  }
}
