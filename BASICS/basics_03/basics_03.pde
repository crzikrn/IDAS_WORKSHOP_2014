// WINTER WORKSHOP 2014, IDAS
// PROTOTYPING WITH CREATIVE CODING
//
// Instructor: KARAM BYUN
// byunnnn.com
// --------------------------
// BASICS 03: Drawing
// --------------------------

// Size of Canvas or Window
size(600, 600);
background(244);

// Let's draw shapes on our canvas!

// Circles (x-position, y-position, radius width, radius length)
ellipse(100,100,50,50);
// Rectangles  (x-position, y-position, width, length)
rect(300,300,100,200);
// Lines (origin x, origin y, path x, path y)
line(0,0,300,300);

// Coloring the inside.
fill(255,0,0);
ellipse(500,100,50,50);

// Coloring the stroke, the line.
stroke(0,0,255);
line(width,0,300,300);

// Change stroke thickness
strokeWeight(10);
rect(200,300,100,200);






