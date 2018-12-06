//Particle myParticle; 
ArrayList<Particle> myParticle;

void setup(){
  size(600, 600); 
  //myParticle = new Particle(width/2, height/2);
  
  myParticle = new ArrayList <Particle>(); 
}

void draw(){
  background(0); 
  for(int i=0; i < myParticle.size(); i++){
    Particle p= myParticle.get(i);
  p.move();
  p.bounce(); 
  p.display(); 
  
  if (p.dead()) {
    myParticle.remove(i);
  
}
}
println(myParticle.size());
}
  //to check to see if a particle is still alive, can use .dead() method
//  println(myParticle.dead()); 
//  }
