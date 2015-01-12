// WINTER WORKSHOP 2014, IDAS
// PROTOTYPING WITH CREATIVE CODING
//
// Instructor: KARAM BYUN
// byunnnn.com
// --------------------------
// BASICS 05: Loops and Complications
// ------------------------

void setup() {
  size(600, 600);
  background(244); 
  noStroke();
}

void draw() {
  // 가로 행열
  fill(55);
  ellipse(50, 50, 50, 50);
  ellipse(150, 50, 50, 50);
  ellipse(250, 50, 50, 50);
  ellipse(350, 50, 50, 50);
  ellipse(450, 50, 50, 50);
  ellipse(550, 50, 50, 50);

  // Simple code with looping
  // Loop을 이용한 간단한 코딩
  // 세로 행열
  for (int i = 0; i < height; i+=100) {
    fill(255, 0, 0, 50);
    ellipse(50, 50+i, 50, 50);
  }

  for (int i = 0; i < height; i+=100) {
    fill(0, 0, 255, 50);
    ellipse(150, 50+i, 50, 50);
  }
  
   for (int i = 0; i < height; i+=100) {
    fill(0, 255, 255, 50);
    ellipse(450, 50+i, 50, 50);
  }
}





