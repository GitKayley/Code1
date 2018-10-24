//Calculate the distance between your mouse and a shape; print this value to the console
//Turn a boolean from false to true if your mouse is within the boundaries of your shape
//Constrict the movement of a shape within an area of your canvas
//Create a button that moves a shape to a new random position on the canvas

//Constrict movement: circle bouncing within triangle 

//boolean t/f: background of triangle changes from black to yellow 

float x; 
float y; 
float xSpeed; 
float ySpeed; 
float r, g, b; 
float distance;
int radius; 

void setup() {
  background(100);
  size (500, 500);
  noFill();
  smooth();
  strokeWeight (1);
  xSpeed = 7; 
  ySpeed = 11; 
  
  smooth(); 
  x = width/2; 
  y = height/2; 
  
  radius = 70; 
}
void draw() {
  noStroke();
  //draw triangle to restrict movement
  triangle (width*.5, width*.1, width*.1, width*.7, width*.9, width*.7);


  //make eyeball: one big white circle
  //white
  fill(#f8f7f2);
  ellipse(width*.5, width*.5, width*.115, width*.115);

  //middle of that is smaller brown circle 
  //brown
  fill(#60381a);
  ellipse(width*.5, width*.5, width*.08, width*.08);

  //and smaller black center
  //black
  fill (30);
  ellipse(width*.5, width*.5, width*.05, width*.05);

  fill (#f8f7f2);

  //small white dot offset of center 
  ellipse(width*.48, width*.5, width*.02, width*.02);
  fill (130);
  x = x + xSpeed;
  y = y + ySpeed; 
  
  //create boundaries
  if( x>= (width- radius/2) || x<= radius/2){
    xSpeed = xSpeed *-1; 
    //reverses xDirection
  }
  if( y >= (height-radius/2) || y <= radius/2){
    ySpeed = ySpeed * -1; 
  }
  
  if( x== (width- radius/2) || x== radius/2 ){
    r = random(0,255); 
    g = random(0, 255); 
    b = random(0, 255); 
  }
  
  if( y>= (height- radius/2) || y<= radius/2 ){
     r = random(0,255); 
     g = random(0, 255); 
     b = random(0, 255); 
  }
  
    noStroke();   
    fill(r, g, b); 
    ellipse(x, y, radius, radius); 
}
