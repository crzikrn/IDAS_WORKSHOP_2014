class Text {

  int size;
  String t;
  int x = 10;
  int y = 10;

  Text(String _t, int _size) {

    size = _size;
    t = _t;
  }

  void display() {
    textSize(size);
    text(t, x, y);
  }

  void mousePressed() {

    x = mouseX;
    y = mouseY;
  }
  
  boolean hold(){
    if(mouseX > x && mouseX < 300 && mouseY > y && mouseY < 20){
     return true; 
    }
    else return false;
  }
  
}

