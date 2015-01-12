PFont font;

int s = second();

void setup() {
  background(255);
  size(480, 720);
  fill(0);
  font = loadFont("NEXONFootballGothicB-48.vlw");
}

void draw() {
  s = second();
  background(255);
  
  textFont(font);
  textSize(50);
  text(month() +" - " + day()+" - "+hour()+":"+ minute()+":"+ sec(), width/4, height/2);
  
  println(s);
  
}

String weekday(){
  
  int day = day();
  
  
  
    return "Wait";
  
}


int sec(){
 if(s < 10){
  return 0+s;
 } 
 else return s;
}



