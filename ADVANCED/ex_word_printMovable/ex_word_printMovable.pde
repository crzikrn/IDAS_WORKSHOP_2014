Text a;
Text b;

Text text[] = new Text[9];
int i = 0;

void setup() {
  a = new Text("Methodology", 48);
  b = new Text("The methods for such", 18);

  for (int i = 0; i < text.length; i++) {
  }

  size(500, 800);
}

void draw() {

  background(0);
  text[0] = a;
  text[1] = b;

  if (mousePressed) {
    switch(i) {

    case 0:
      text[0].mousePressed();
      break;
    case 1:
      text[1].mousePressed();
      break;
    case 2:
      text[2].mousePressed();
      break;
    case 3:
      text[3].mousePressed();
      break;
    case 4:
      text[4].mousePressed();
      break;
    }
  }




  a.display();
  b.display();
}

void mousePressed() {

  //a.mousePressed();
}

