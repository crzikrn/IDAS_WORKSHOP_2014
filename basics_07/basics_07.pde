// WINTER WORKSHOP 2014, IDAS
// PROTOTYPING WITH CREATIVE CODING
//
// Instructor: KARAM BYUN
// byunnnn.com
// --------------------------
// BASICS 07: Bouncing Ball 
// ------------------------

float x,y;
float speedX = 1.2;
float speedY = 1.5;

void setup(){
  size(500,500);
}

void draw(){
  
  if(x <  0 || x > width){
   speedX = -speedX; 
  }
  
  if(y <  0 || y > height){
   speedY = -speedY; 
  }
  
  x = x+speedX;
  y = y+speedY;
  
  ellipse(x,y,10,10);
  
}

