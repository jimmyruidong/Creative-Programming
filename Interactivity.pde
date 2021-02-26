// Title& theme: Computer worm/virus
//x and y position
float x;
float y;
//speed
float speedX;
float speedY;

float bg;
//int startTime;
//int ms;


void setup() {
  size(800,800);
  background(bg);
//  startTime = millis();
//  ms = 0;
  x = 350;
  y = 350;
  speedX = 0;
  speedY = 0;
}

/*void reset(){
  ms = millis() - startTime;
  if((ms) > 1000){
  ms = 0;
  startTime = millis();
  }
}*/

void draw() {
  stroke(175);
  rectMode(CENTER);
  fill(random(255),random(255),random(255));
  rect(x, y, 20, 20);
  
  x = x + speedX; 
  y = y + speedY;
  
  if(speedX < 0){
    speedX = speedX + 0.1;
  }
  else if(speedX > 0){
    speedX = speedX -0.1;
  }
  
    if(speedY < 0){
    speedY = speedY + 0.1;
  }
  else if(speedY > 0){
    speedY = speedY-0.1;
  }
}

// capture the most recent key pressed
void keyPressed() {
  
  //up
  if (keyCode == 37){
    speedX =- 5;
    
  }
  
  //left
  else if (keyCode == 38){
     
      speedY=- 5;
  }
  
  //right
  else if (keyCode == 39){
    speedX=+ 5;
    
  }
  
  //down  
  else if (keyCode == 40){
    speedY =+ 5;
  }
  
}
