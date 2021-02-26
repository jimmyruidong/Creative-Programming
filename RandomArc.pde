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
  ellipse(width/2,height/2,height-10,height-10);
  noStroke();
  for (int i=0; i<10; i++) {       
    drawArcs(width/2, height/2, 10, 10);
    
  }
    endRecord();
  exit();
}

void drawArcs(int a, int c, int x, int y){
    if(x < width-10 && y < height-10){
    float r = random(0,255);      
    float g = random(0,255);      
    float b = random(0,255);      
    fill(r,g,b, 200);       
    noStroke();
    float arcBeg = random (0, PI*2);
    float arcEnd = random (0, PI*2);
    arc(a, c, x, y, arcBeg, arcEnd);
    noFill();
    drawArcs(a,c,x+20,y+20);
    }
    
}
