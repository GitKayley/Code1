void setup() {
  size(600, 600);
  for (int i = 0; i < width; i++) {
    for (int j = 0; j < height; j++) {
      float r = map(i, 0, width/2, 0 ,width);
      float g = map(j, 0, width/2, 0 , height);
      stroke(r, g, 175);
      point(i, j);
      //change map stop and start values
    }
  }
}
