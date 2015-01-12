//DECLARE
ArrayList ballCollection;
PImage a;

void setup() {
  size(600, 800);
  smooth();
  a = loadImage("poster_short_1.jpg");
  //INITIALIZE
  ballCollection  = new ArrayList();
  
  //for (int i=0; i<100; i++) {
    //Ball theName = new Ball(random(0, width), random(0, 200));
   // ballCollection.add(theName);
 // }

}

void draw() {
  
  background(255);
   a.resize(500,700);
  image(a,50,50);
  Ball theName = new Ball(300,600);
  ballCollection.add(theName);
  
  if(ballCollection.size() > 700){
   ballCollection.clear();
  }
  
  //CALL FUNCTIONALITY
  
  for (int i = 0; i < ballCollection.size() ;i++) {
    Ball Name = (Ball) ballCollection.get(i);
    Name.run();
    for (int j = i+1; j < ballCollection.size (); j++) {
      Ball other = (Ball) ballCollection.get(j);
      Name.collision(other);
    }
    
  }
 
  
}

