// initialize background color 
int bgColor = 150;
int pupilPosition;
float eyeWhites;
float bodyRed;
float bodyGreen;
float bodyBlue;

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      eyeWhites++;
    } else if (keyCode == DOWN) {
      eyeWhites--;
    } 
  } 
}

void setup()
{
  // initialize size of canvas
  size (500,500);
  // initialize canvas background color
  background(bgColor);
  rectMode(CENTER);

  eyeWhites = width*.22;
  bodyRed = 0;
  bodyGreen = 150;
  bodyBlue = 0;
  
  
  //prints position of pupil to console
  println(pupilPosition);

}

void draw()
{
  // initialize pupil position !!
  background(150);
  pupilPosition = int(random(width*.35,width*.37));

  // draw a huge green oval
  fill(bodyRed, bodyGreen, bodyBlue);
  
  //can fill FacePostion variable below
 
  ellipse(width*.5,width*.5,width*.5,width*.4);

  // draw two white circles
  fill(255,255,255);

  ellipse(width*.36,width*.36,eyeWhites,eyeWhites);
  ellipse(width*.64,width*.36,eyeWhites,eyeWhites);

  // draw black smaller circles inside white circles
  fill(0,0,0);
  ellipse(pupilPosition,width*.36,width*.18,width*.18);
  ellipse(pupilPosition+(width*.28),width*.36,width*.18,width*.18);
  
  // draw red arc in the lower middle of the the two black circles
  fill(255,0,0);
  pushMatrix();
  translate(width/2,height/2);
  rotate(radians(mouseX));
  scale(1.2);
  arc(0,0, width*.16, width*.16, 0, PI+QUARTER_PI, PIE);
  
  popMatrix();  
  
  if(mousePressed)
  {
    bodyRed = random(0,255);
    bodyGreen = random(0,255);
    bodyBlue = random(0,255);
  }
}
  
// pseudo-code: 
// draw a huge green oval
// draw two  white circles
// draw black smaller circles in circles on top
// draw red ellipse in the lower middle of the the two black circles
