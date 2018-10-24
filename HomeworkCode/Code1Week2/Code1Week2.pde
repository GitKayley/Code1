// initialize background color 
int bgColor = 150;
int pupilPosition;
int value =0;
//in order to make it proportional 
//facePosition = width/2;

void setup()
{
  // initialize size of canvas
  size (500, 500);
  //facePostion = 250;
  // initialize canvas background color
  background(bgColor);
  
  
  
  //prints position of pupil to console
  println(pupilPosition);

}

void draw()
{
  noStroke();
  
    // initialize pupil position between 180 and 250
    background(150);
  pupilPosition = int(random(180, 250));
  // draw a huge green oval
  fill(0,150,0);
  //can fill FacePostion variable below
  ellipse(250,250,250,200);
  
  // draw two white circles
  ellipse(180,180,110,110);
  ellipse(320,180,110,110);
  
  // draw black smaller circles inside white circles
 // fill(0,0,0);
fill(value);
  ellipse(pupilPosition,180,90,90);
  ellipse(pupilPosition+140,180,90,90);
  
  // draw red arc in the lower middle of the the two black circles
  fill(255,0,0);
  arc(250, 270, 80, 80, 0, PI+QUARTER_PI, PIE);
  
  colorMode (RGB, 30, 333, 7, 56);
  
  
}

void mousePressed() {
  if (value ==0) {
    value = 1;
  } else {
    value = 100;
  }
}
  
// pseudo-code: 
// draw a huge green oval
// draw two  white circles
// draw black smaller circles in circles on top
// draw red ellipse in the lower middle of the the two black circles
