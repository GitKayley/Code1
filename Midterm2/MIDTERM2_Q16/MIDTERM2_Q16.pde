float[] xPos = { 100, 200, 300, 400, 500 };
float[] yPos = { 100, 200, 300, 400, 500 };
int size = 60; 

void setup() {
  size(600, 600);
}

void draw() {
  background(240);
  for (int i = 0; i < xPos.length; i++) {
    ellipse(xPos[i], 200, size, size);
  }
 // for (int i = 0; i < yPos.length; i++) {
  //  ellipse(yPos[i], 200, size, size);
  }
