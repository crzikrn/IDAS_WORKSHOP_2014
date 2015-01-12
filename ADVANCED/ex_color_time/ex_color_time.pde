PFont font;

int s = second();
int m = minute();
int h = hour();
float f = second();
color r;
color g;
color b;


void setup() {
  background(255);
  size(480, 720);
  fill(0);
  font = loadFont("NEXONFootballGothicB-48.vlw");
}

void draw() {
  s = second();
  m = minute();
  h = hour();
  r = int(map(h, 0, 24, 0, 255));
  g = int(map(m, 0, 60, 0, 255));
  b = int(map(s, 0, 60, 0, 255));
  //color c = color(r,g,b);
  background(color(r, g, b));

  textFont(font);
  textSize(50);
  text(month() +" - " + day()+" - "+hour()+":"+ minute()+":"+ sec(), width/4, height/2);

  //  /println(c);
}

String weekday() {

  int day = day();



  return "Wait";
}


int sec() {
  if (s < 10) {
    return 0+s;
  } else return s;
}


