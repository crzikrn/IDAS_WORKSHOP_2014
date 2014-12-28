float x, y, x1, y1, p, p1, r;

void setup() {
  background(11);
  noStroke();
  size(600, 600);
}

void draw() {
  translate(300, 300);
  p = random(1);
  p1 = random(1);
  r = random(1, 10);

  if (p < 0.25) {
    x++;
  }  
  else if (p < 0.5) {
    y++;
  }
  else if (p < 0.75) {
    x--;
  }
  else if (p < 1) {
    y--;
  } 
  
  if (p1 < 0.25) {
    x1++;
  }  
  else if (p1 < 0.5) {
    y1++;
  }
  else if (p1 < 0.75) {
    x1--;
  }
  else if (p1 < 1) {
    y1--;
  } 
  
  fill(255, 20);
  ellipse(x, y, r, r);
  fill(255, 100, 0, 20);
  ellipse(x1, y1, r, r);

}

