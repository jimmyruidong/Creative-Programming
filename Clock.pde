//Attempted to ultilize perlin noise/motion, failed to implement.
// Background changes based on time.
int startTime;
int ms;
int h;
int m;
int s;
/*
  int x1;
  int x2;
  int y1;
  int y2;
*/

void setup() {
  size(920, 920);
  background (255,102,153);
  stroke(255);
  startTime = millis();
  ms = 0;

}

void draw() {
  strokeWeight(5.0);
  h = hour();
  m = minute();
  s = second();
  // sets background to match time.
  if(h >= 7 && h <= 12){
  background (200,200+((h-7)*9),250); 
  }
  else if(h >= 12 && h <= 17){
  background (200,255-((h-12)*9),250); 
  }
  else if(h == 6 || h == 18){
  background (200,200,100); 
  }
  else if(h > 18 ){
  background (20,20,120 - ((h-19)*12)); 
  }
  else if (h == 0) {
  background (10,10,20);
  }
  else if (h >0) {
  background (20,20,40+(h*12));
  }
  //Reset MS time
  ms = millis() - startTime;
  if((ms) > 1000){
  ms = 0;
  startTime = millis();
  }
  

  /*
  
  */
  
  //minutes
for(int i = 0; i<= h; i++){
  if(i >= 7 && i <= 12){
  fill (200-20,200-20+((i-7)*9),250-20);
  }
  else if(i >= 12 && i <= 17){
  fill (200-20,255-20-((i-12)*9),250-20); 
  }
  else if(i == 6 || i == 18){
  fill (200-20,200-20,100-20); 
  }
  else if(i > 18 ){
  fill (20-20,20-20,120-20 - ((i-19)*12)); 
  }
  else if (i == 0) {
  fill (10,10,20);
  }
  else if (i >0) {
  fill (20-20,20-20,40+(i*12));
  } 
  if(i == h){
  rect(i*920/23,100,920/24,100+m*10);
  }
  else rect(i*920/23,100,920/24,720);
}
  
  //seconds bar 
  
  fill(100,100,random(190,210));
  rect(0,0,s*920/60,100);
  //Milliseconds bar
  fill(100,random(190,210),100);
  rect(0,820,(ms*920/1000),920);
  noFill();
}
  

 /* stroke(100, 100, 100);
  strokeWeight(40.0);  
  strokeCap(ROUND);
  line(30, 40, s*10, 40);

  stroke(200, 100, 100);
  strokeWeight(60.0);  
  strokeCap(ROUND);
  line(40, 110, 80+m*5, 110);*/
