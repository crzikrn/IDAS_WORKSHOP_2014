
class Ball {
  // GLOBAL VARIABLE
  float x;
  float y;
  float speedX = random(-1,1); //4;
  float speedY = random(-2,4); //9.8;
  float distance;
  float n = noise(1);
  // COSTRUCTOR
  Ball(float _x, float _y) {
    x = _x;
    y = _y;
  }

  // FUNCTIONS 

  void run() {
    display();
    move();
    bounce();
    gravity();
  }

  void gravity() {
    speedY += -0.15;
  }

  void bounce() {
    if (y > height) {
      speedY = speedY * -1;
    }
    if (y < 0) {
      speedY = speedY * random(-1,-0.5);
    }
    if (x > width) {
      speedX = speedX * -1;
    }
    if (x < 0) {
      speedX = -speedX;
    }
  }

  void move() {
    //x += random(speedX);
    //y += random(speedY);
    x += speedX;
    y += speedY;
    
  }

  void display() {
    noStroke();
    //ellipse(x, y, 2, 2);
  }
  
   void collision(Ball other) {
    distance = map(n, 0, 1, 40, 110);

    if (dist(x, y, other.x, other.y) < 30) {
      stroke(244, 0, random(100),random(100));
      //strokeWeight(map(noise(tx), 0, 1, 0, 3));
      //vertex(x, y);
      line(x, y, other.x, other.y);
      line(other.x, other.y, x, y);
    }
  }
}

