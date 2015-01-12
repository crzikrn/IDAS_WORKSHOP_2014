int size = 200;
boolean q = false;

void setup() {
  size(600, 600);
}

void draw() {
  //Shape 1

  if (mousePressed) {
    background(0);
    fill(255);
    ellipse(width/2, height/2, size, size);
  } 
  //Shape 2
  else {
    background(0);
    rectMode(CENTER);
    fill(255);
    rect(width/2, height/2, 200, 200);
  } 
  
  //Shape 3
  if (q == true) {
    fill(random(255),random(255),random(255));
    for (int x = 0; x < width+30; x+=50) {
      for (int y = 0; y < height+30; y+=50) {
        ellipse(x, y, 30, 30);
      }
    }
  }
}

void keyPressed() {
  if ( key == 'a') {
    size+=10;
  } 
  if ( key == 's') {
    size-=10;
  }
  if ( key == 'q') {
    q = !q;
  }
}

