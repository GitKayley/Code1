int x, y;
int size;
float dist;
boolean mousePressed;

void setup() {
  size(600, 600);
  x =width/2;
  y =height/2;
  size= 200;
  background(150);
}

void draw() {
  background(150);
  if (mousePressed) {
    fill(255);
  } else {
    fill(150);
  }

 ellipse(x, y, 200, 200);
}

void mousePressed(){
  dist = dist (mouseX, mouseY, x, y);
  if(dist <= size/2){
    mousePressed = true;
  }else{
    mousePressed= false;
  }
}
