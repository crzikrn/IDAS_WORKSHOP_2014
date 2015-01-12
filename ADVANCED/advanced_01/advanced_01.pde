// WINTER WORKSHOP 2014, IDAS
// PROTOTYPING WITH CREATIVE CODING
//
// Instructor: KARAM BYUN
// byunnnn.com
// --------------------------
// ADVANCED 01: Arrays
// ------------------------

//Array declaration

//Hardcoding
String[] synonyms = { 
  "batch", "bunch", "bundle", "host", "lineup", "cluster", "design", "display"
};

//Creating memory
int[] numbers = new int[5];

float p;

void setup() {
  size(500, 500);
  //Setting numbers with random numbers
  for (int i = 0; i < numbers.length; i++) {
    numbers[i] = floor(random(1)*8);
  }
  textSize(22);
}

void draw() {
  
  //Printing each word in synonyms
  for (String word : synonyms) {
    //println(word);
  }

  //Print random words in synonyms
  for (int i = 0; i < synonyms.length; i++) {
    p = random(1);
    if ( p < 0.02) {
      background(0);
      text("Processing",130,250);
      text(synonyms[i],250,250);
      //println(synonyms[i]);
    }
  }


  for (int i = 0; i < numbers.length; i++) {
    //background(0);
    String val = synonyms[numbers[i]]; 
    //text(val, mouseX, mouseY);
  }
}

