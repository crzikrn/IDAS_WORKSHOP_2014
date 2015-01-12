//Paint

float size = 1;

void setup() {

  size(1280, 720);
  background(255);
}

void draw() {
  //Brush by Mouse Press
  //  if (mousePressed){  
  //    ellipse(mouseX, mouseY, mouseX-pmouseX, mouseY-pmouseY);
  //  }
  fill(244);
  rect(0,0,100,50);
  fill(255,0,0);
  text("Brush Size :"+size,10,25);
}

void mouseDragged() {
  
  ellipse(mouseX, mouseY, 2*(mouseX*size-pmouseX*size), 2*(mouseX*size-pmouseX*size));
}


void keyPressed() {

  //Erase All
  if (key == 'a') {
    background(255);
    fill(0);
  }

  if (key == 'e') {
    fill(255);
  }

  if (key == 'b') {
    fill(0);
  }

  //Brush Size Increase
  if (key == '[') {
    size+=0.5;
  }

  //Brush Size Decrease
  if (key == ']') {
    size-=0.5;
  }
  
  //No stroke
  if (key == 'n') {
    noStroke();
  }
  
  if (key == 'm'){
     stroke(0); 
  }
  
  
}

