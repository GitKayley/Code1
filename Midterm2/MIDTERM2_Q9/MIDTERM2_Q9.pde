void setup() {
  size(600, 600);
}

void draw() {
  background(20);
  
  fill(255);
  
  float hourPos = map(hour(), 0, 12, 0, 360);
  pushMatrix(); 
  translate(width/2, height/2); 
  rotate(radians(hourPos)); 
  rect(0, 0, width/30, 200);
  popMatrix(); 
  //rect(hourPos, 
  
  float minutePos = map(minute(), 0, 60, 0, 360);
  pushMatrix(); 
  translate(width/2, height/2); 
  rotate(radians(minutePos)); 
  rect(0, 0, width/60, 200);
  popMatrix(); 
  //rect(minutePos, 
  
  float secondPos = map(second(), 0, 60, 0, 360);
  pushMatrix(); 
  translate(width/2, height/2); 
  rotate(radians(secondPos)); 
  rect(0, 0, width/60, 200);
  popMatrix(); 
}
