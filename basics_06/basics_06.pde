// WINTER WORKSHOP 2014, IDAS
// PROTOTYPING WITH CREATIVE CODING
//
// Instructor: KARAM BYUN
// byunnnn.com
// --------------------------
// BASICS 06: More Loops and Complications 
// ------------------------

float add;

void setup() {
  size(600, 600);
  background(244); 
  noStroke();
}

void draw() {

  // Simple code with looping
  // Loop을 이용한 간단한 코딩
  for (int x = 0; x < width; x+=100) {
    for (int y = 0; y < height; y+=100) {
      fill(0, add, 0, 50);
      ellipse(50+x, 50+y, 50, 50);

      if (add > 255) {
        add = 0;
      } 
      else {
        add = add + 0.1;
      }
    }
  }
}

