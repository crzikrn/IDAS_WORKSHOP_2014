// WINTER WORKSHOP 2014, IDAS
// PROTOTYPING WITH CREATIVE CODING
//
// Instructor: KARAM BYUN
// byunnnn.com
// --------------------------
// BASICS 11: PFonts & Time
// ------------------------

PFont font;

void setup() {
  size(900, 250);
  font = loadFont("Amienne-Bold-48.vlw");
}

void draw() {
  
  fill(mouseX, second(), 0, 10);
  textFont(font, mouseY*.7);
  text(minute()+":"+second(), mouseX, mouseY);
}

