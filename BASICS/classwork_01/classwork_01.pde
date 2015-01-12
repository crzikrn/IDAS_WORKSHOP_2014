int r = 11;

void setup(){
  size(600,800);
  background(11);
  noStroke();
  
}

void draw(){
  fill(11,10);
  rect(0,0,width,height);
   for(int x = 0; x < width; x+=r){
    for(int y = 0 ;y < height; y+=r){
       fill(random(255),10);
       ellipse(x,y,r,r);
    }
   } 
   
//   fill(244,0,0,40);
//   rect(random(width),random(height/2),random(100),100);
//  
//   fill(44,0,244,40);
//   rect(random(width),random(height/2,height),100,random(100));
   
   for(int i = 0;i<200;i+=100){
   fill(random(244),0,244,100);
   rect(i,0,random(150),height);
  
   fill(random(244),0,random(244),100);
   rect(i,0,random(90),height);
   
   fill(random(244),0,random(244),100);
   rect(0,i*random(10),width,random(90));

   }
}

