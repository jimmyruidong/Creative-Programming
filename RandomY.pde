import processing.pdf.*; 
String filename = "RandomLines.pdf";

void setup() {
  
  size(1152, 720);
  beginRecord(PDF, filename);
  background(255);
    for(int count = 10; count < height-10; count +=1){
       float r = random(10,255);      
    float g = random(150, 255);      
    float b = random(150, 255);        
    stroke(r, g, b);
    strokeWeight (10);
    line(0, count,width-10 , random(10,height-10));
  }
  for(int count = 10; count < width-10; count++){
     float r = random(150,200);      
    float g = random(10, 255);      
    float b = random(10, 255);        
    stroke(r, g, b);
    strokeWeight (2);
    line(count, 0, random(10,width-10), height-10);
  }
  fill(255,255,204);
  ellipse(width/2,height/2, 300,300);
 
  endRecord();
  //exit();
}
