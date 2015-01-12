// WINTER WORKSHOP 2014, IDAS
// PROTOTYPING WITH CREATIVE CODING
//
// Instructor: KARAM BYUN
// byunnnn.com
// --------------------------
// ADVANCED 03: Visual Time
// --------------------------

int hour;
int minute;
int second;
int y;

void setup() {

  noStroke();
  smooth();
  rectMode(CENTER);
  size(400, 300);
  y = height/2;
}

void draw() {
  background(50);
  
  hour = int(map(hour(), 0, 23, 50, 120));
  minute = int(map(minute(), 0, 60, 50, 200));
  second = int(map(second(), 0, 60, 2, 200));
  
  fill(240,240,0,123);
  ellipse(120, y, hour, hour);
  fill(240,0,100,200);
  pushMatrix();
  translate(200,150);
  rotate(radians(second));
  rect(0, 0, minute, minute);
  popMatrix();
  fill(0,240,100,123);
  ellipse(300, y, second, second);
 
}

