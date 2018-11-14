float x, y; 
float size = 50; 
float xSpeed, ySpeed; 

void setup(){
  size(600, 600); 
  
  x = width/2; 
  y = height/2; 
  
  xSpeed = random(1, 4); 
  ySpeed = random(1, 6); 
}

void draw(){
  background(0); 
  
  x = x + xSpeed; 
  y = y + ySpeed; 
  
  fill(255); 
  ellipse(x, y, size, size); 
  
  if(x >= 400){
  }else{
 println("what");  }

  if(frameCount % 120 == 0){
    xSpeed = random(-5, 5); 
    ySpeed = random(-5, 5); 
    println(x, y, size, size);
    
  }  
  }
