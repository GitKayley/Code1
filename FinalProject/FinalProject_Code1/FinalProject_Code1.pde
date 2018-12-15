//Ball myBall;
//PImage backImg =loadImage("https://i.imgur.com/lMLAhJv.png");
PImage startImg=loadImage("https://i.imgur.com/PmWwdVu.png");
PImage cowImg =loadImage("https://image.spreadshirtmedia.com/image-server/v1/mp/designs/1016918884,width=178,height=178/cute-cow-cartoon-design.png");
//gamestate 1 = start of game
int gamestate =1;
int score = 0, 
highScore = 0, 
x = -200, 
y, vy = 0;
ArrayList <Cow> cows;
void setup(){
  size(600,600);
  imageMode(CENTER);
 // image(backImg, width/2,height/2);
 
 cows = new ArrayList<Cow>();
  
}

void draw(){
  background(0);
  if(gamestate == 0) {
    //how to make bg continuously loop
   // imageMode(CORNER);
   // image(backImg, x, 0);
   // image(backImg, x+backImg.width, 0);
    x -= 6;
    vy += 1;
    y += vy;
  }
    else {
   imageMode(CENTER);
  image(startImg, width/2,height/2);
    }
  //myBall.display();
  //myBall.move();
  //myBall.sideBounce();
  //myBall.bottomBounce();
  
  for(int i = 0 ; i<cows.size(); i ++){
    Cow b = cows.get(i);
   b.display();
   b.move();
   b.sideBounce();
  b.bottomBounce();
  
  if (b.pos.y < 0){
    cows.remove(i);
   
  }
  
  float d = dist(mouseX, mouseY, b.pos.x, b.pos.y);
  if(d<b.size/2 && mousePressed){
    cows. remove(i);
  }
  }
  if (frameCount % 30 ==0){
    cows.add(new Cow());
  }
  }
