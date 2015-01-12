// WINTER WORKSHOP 2014, IDAS
// PROTOTYPING WITH CREATIVE CODING
//
// Instructor: KARAM BYUN
// byunnnn.com
// --------------------------
// ADVANCED 2: Arrays
// ------------------------


int intArray[] = new int[5];
String textArray[] = new String[5];


void setup() {
  background(50);
  size(600, 600);

//intArray[0] = second();
//intArray[1] = 4;

//textArray[0] = "I";
//textArray[1] = "am";
//textArray[2] = "you";

  for (int i = 0; i < intArray.length; i++) {
    intArray[i] = i*20;
  }

  for (int i = 0; i <textArray.length; i++) {
    textArray[i] = "I am " + i ;
  }
}

void draw() {
  
  for (int x = 0; x < intArray.length; x++) {
    //fill(255);  
    ellipse(x*120, 300, intArray[x], intArray[x]);
    text(textArray[x],x*120,370);
    println(x);
  }

printArray(intArray);
printArray(textArray);
println(intArray[0]);
}
