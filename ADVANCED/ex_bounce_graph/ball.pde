class Ball {

  float x;
  float y;
  PVector speed;
  float distance = random(-5,100);
  float size = random(2);
  color c = int(random(255));


  Ball(float _x, float _y) {
    x = _x;
    y = _y;
    speed = new PVector(random(-2,3), random(-2,2));
  }

  void run() {
    display();
    move();
    bounce();
    
  }

  void display() {
    noStroke();
    fill(255);
    ellipse(x, y, size, size);
  }

  void move() {

    x += speed.x;
    y += speed.y;
  }

  void bounce() {
    if (y > height) {
      speed.y = speed.y * -1;
    }
    if (y < 0) {
      speed.y = speed.y * -1;
    }
    if (x > width) {
      speed.x = speed.x * -1;
    }
    if (x < 0) {
      speed.x = -speed.x;
    }
  }
  
  void collision(Ball other){
    if(dist(x,y,other.x, other.y) < distance){
      stroke(244,0,c);
      strokeWeight(random(0.1,5));
      vertex(x,y);
     line(x,y,other.x,other.y);
     line(other.x,other.y,x,y);
     
   }
  }
  
}

