// WINTER WORKSHOP 2014, IDAS
// PROTOTYPING WITH CREATIVE CODING
//
// Instructor: KARAM BYUN
// byunnnn.com
// --------------------------
// BASICS 07: Bouncing Ball & Functions
// ------------------------

float x, y;
float speedX = 1.2;
float speedY = 1.5;
float gravity = 0.5;

void setup() {
  size(500, 500);
}

void draw() {

  if (x <  0 || x > width-10) {
    speedX = -speedX;
  }

  if (y <  0 || y > height-10) {
    speedY = -speedY;
  }
  speedY = speedY+gravity;
  x = x+speedX;
  y = y+speedY;

  fill(255,10);
  ellipse(x, y, 10, 10);
}

void mousePressed() {
  background(244);
  x = 0;
  y = 0;
  speedX = 1.2;
  speedY = 1.5;
  gravity = 0.5;
}

