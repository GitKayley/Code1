int circleSize;
int xPos, yPos;
color circleColor, bgColor;

boolean isCirclePressed;

int distance;

void setup(){
  size (500, 500);
  bgColor=color( 0, 200, 200);
  background (bgColor);
  
  xPos = width/2;
  yPos = height/2;
  
  circleSize = 100;
}

void draw(){
  noStroke();
  fill (circleColor);
  ellipse (xPos, yPos, circleSize, circleSize);
  background (bgColor);
  distance = int(dist(xPos, yPos, mouseX, mouseY));
  
  if (distance<circleSize/2){
    circleColor = color(255, 0, 60);
  } else{
    circleColor = color (255, 255, 255);
    
    if(isCirclePressed == true){
      bgColor = 255;
    }else{
      bgColor =150;
  //}
  //if(distance<circleSize/2 && mousePressed){
  //  bgColor = 255;
  //}else{ 
  //  bgColor = 150
;
  }
    fill (circleColor);
  ellipse (xPos, yPos, circleSize, circleSize);
}
}

void mousePressed(){
  if (distance<circleSize/2){
    isCirclePressed = !isCirclePressed;
  }
  //if (distance<circleSize/2){
  //  bgColor = 255;
  //}else{
  //  bgColor =150;
  //}
}
