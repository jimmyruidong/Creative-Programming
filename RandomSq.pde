import processing.pdf.*; 
String filename = "RandomArcs.pdf";

void setup() {
  size(1152, 720);
  beginRecord(PDF, filename);
  background(255);
  
      float r = random(0,255);      
    float g = random(0,255);      
    float b = random(0,255);      
    fill(r,g,b, 200);     
  noStroke();
  
    
  
  for (float y = 10; y < height-20; y+=10){
    fill(random(255),random(255), random(255));
  for(float x = 10; x < width-20; x+=10 ){
    fill(random(255),random(255), random(255));
    if(x >width - 20 || y > height - 20){
    break;
    }
    else{rect(x,y,10,10);}
    
  } 
  }  
  
  for (int i=0; i<10; i++) {   
    
    drawSquare(10, 10, 10, 10);
    
  }
    endRecord();
  exit();
}

void drawSquare(int a, int c, int x, int y){
   float r = random(0,255);      
    float g = random(0,255);      
    float b = random(0,255);      
    fill(r,g,b, 200);       
    noStroke(); 
  if(a < width-10 && c < height-10){    
    rect(a,c,x,y);
    drawSquare(a+10,c,x,y);

    /*float arcBeg = random (0, PI*2);
    float arcEnd = random (0, PI*2);
    arc(a, c, x, y, arcBeg, arcEnd);
    noFill();
    drawArcs(a,c,x+20,y+20);*/
    }
    
    
    }
    
