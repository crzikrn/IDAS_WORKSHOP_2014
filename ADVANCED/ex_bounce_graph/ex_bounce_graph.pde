Ball b = new Ball(110, 10);

ArrayList Balls = new ArrayList();

void setup() {
  size(1500, 500);
  background(255);
}

void draw() {
  background(255);
  Ball n = new Ball(random(width), random(height));
 

  if(Balls.size() > 200){
   Balls.clear();
  }

  for (int i = 0; i < Balls.size (); i++) {
    Ball name = (Ball) Balls.get(i);
    name.run();
    for (int j = i+1; j < Balls.size (); j++) {
      Ball other = (Ball) Balls.get(j);
      name.collision(other);
    }
  }

  println(Balls.size());
}

void mouseDragged(){
  Ball n = new Ball(random(width), random(height));
 Balls.add(n); 
}
