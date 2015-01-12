// WINTER WORKSHOP 2014, IDAS
// PROTOTYPING WITH CREATIVE CODING
//
// Instructor: KARAM BYUN
// byunnnn.com
// --------------------------
// BASICS 02: Conditions
// --------------------------

// Example program of flipping a coin.
float random = random(1);
boolean coin;

if (random<.5) {
  coin = true;
  }
else{
  coin = false;
}

// Example Program of Graphic Interpretation
if(coin == true){
 println("Coin flipped heads! You Win!"); 
 //background(0,255,0);
}
else{
 println("Coin flipped tails! You Lose!");
 //background(255,0,0);
}





