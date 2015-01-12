//뉴스속보

PFont font;
int num = 50;
String title = "뉴스속보";
String paragraph[];
StringList list = new StringList();
int x = 10;
int y = 70;
String n;

void setup() {
  size(600, 700);
  background(0);
  font = loadFont("THEBignews-72.vlw");
  paragraph = loadStrings("data.txt");

  for ( int i = 0; i < paragraph.length; i++) {
    //Separate by word and add to the StringList
    //list is a stringList of words in the news document
    list.append(split(paragraph[i], ' '));
  }
  
  n = list.get(26);  
}

void draw() {
  //background(0);
  scale(1);
  text(title, 80, 50);
  

   for ( int i = 0; i < list.size(); i++) {
      //println(list.get(i));
      if(frameCount%100 == 0){
      //if (list.get(i).length() > 0) {
          text(list.get(i), mouseX, mouseY*i);
          
          
      //}
       println(list.get(i));
      }
    }


}

