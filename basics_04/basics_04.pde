// WINTER WORKSHOP 2014, IDAS
// PROTOTYPING WITH CREATIVE CODING
//
// Instructor: KARAM BYUN
// byunnnn.com
// --------------------------
// BASICS 04: Simple Interactions
// --------------------------

void setup() {
  //Size of canvas is 600 pixels by 600 pixels
  //캔버스 사이즈 600 픽셀 x 600 픽셀
  size(600, 600);
  
  noStroke();
  
  // Coloring Background half rectangles, Right is Yellow, Left is Red 
  // 캔버스뒤 오른쪽 반은 노랑, 왼쪽 반은 빨강
  fill(255,0,0);
  rect(0,0,300,600);
  fill(255,255,0);
  rect(300,0,300,600);
}

void draw() {
  // Circle shape in the middle of the canvas
  // 캔버스 중심에 있는 원 모양
  stroke(0,0,255);
  strokeWeight(10);
  ellipse(300, 300, 100, 200);
  
  // If mouse is in the left half of the canvas
  // 마우스 위치가 캔버스 왼쪽 반면에 있으면 빨강  
  if (mouseX < width/2) {
    fill(255, 0, 0);
  }
  // else if the mouse is in the other right half of the canvase
  // 마우스 위치가 캔버스 나머지 오른쪽 반면에 있으면 노랑 
  else {
    fill(255, 255, 0);
  }
  
}

