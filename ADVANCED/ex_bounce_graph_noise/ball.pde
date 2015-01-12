class Ball {

  float x;
  float y;
  PVector speed;
  float distance = random(-5, 100);
  float size = (2);
  color c = int(random(255));
  float tx;
  float ty;
  float n = noise(tx, ty);

  Ball(float _x, float _y) {
    x = _x;
    y = _y;
    speed = new PVector(random(-2, 2), random(-2, 2));
    //speed = new PVector(map(noise(tx),0,1,-3,2),map(noise(ty),0,1,-2,5));
  }

  void run() {
    display();
    move();
    bounce();


    tx+=0.02;
    ty+=0.1;
  }

  void display() {
    noStroke();
    fill(255);
    ellipse(x, y, size, size);
  }

  void move() {
    //speed = new PVector(map(noise(tx), 0, 1, -2, 2), map(noise(ty), 0, 1, -2, 2));
    x += speed.x;
    y += speed.y;
  }

  void bounce() {
    if (y > height-10) {
      speed.y = speed.y * -1;
    }
    if (y < 10) {
      speed.y = speed.y * -1;
    }
    if (x > width-10) {
      speed.x = speed.x * -1;
    }
    if (x < 10) {
      speed.x = -speed.x;
    }
  }

  void collision(Ball other) {
    distance = map(n, 0, 1, 40, 110);

    if (dist(x, y, other.x, other.y) < distance) {
      stroke(244, 0, c);
      strokeWeight(map(noise(tx), 0, 1, 0, 3));
      vertex(x, y);
      line(x, y, other.x, other.y);
      line(other.x, other.y, x, y);
    }
  }
}

