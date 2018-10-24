void setup(){
  size(600, 600);
  
}

void draw(){
  //set number of loops
  background (255);
 
 for(int i =0; i <=60; i++){
   fill (map(i, 23, 60, 3, 255));
   int r= int(random(10, 20));
   ellipse(i*r, height/4, 10, 10);
 }
   
   ellipse(i*10, height/3, 10, 10);
 }
{
 //infinite no matter if you change screen size
 for(int i =0; i <=width; i+=10){
   ellipse(i, height/2, 10, 10);
   // 10, 10); is size of circle 
 }
 //could change three variables ^ easier to write v 
 int size =60;
 for(int i = 0; i<= width; i +=size){
   int c= int(map(i, 0, width, 0,255));
   fill(60, c, c);
   ellipse(i, height/1.5, size,size);
 }
 fill (255);
}
