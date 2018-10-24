float[] pos = { 100, 200, 300, 400, 500 };

void setup() {
  size(600, 600);
}

void draw() {
  background(240);
  for (int i = 0; i > 500; i++) {
    ellipse(width/2, pos[i], 50, 50);
  }
}
