/*Multicultural organizations
This art is inspired by a computer motherboard - the neat, organized rows of electronics and circuitry. 
This piece draws the viewer’s attention towards the center of the art, emphasizing the rigid squares and lines within. 
In contrast to these squares is the larger black square, inspired by the main frame of the motherboard. 
The usage of squares as the shape of choice, as well as the lines bordering these squares, give space and texture to the work, making it seem three-dimensional. 
The straight and thick lines lead towards the center, guiding the viewer towards the main emphasis of the work. 
There is a smaller variety of colors outside of the centerpiece, giving the viewer a sense of harmony while still allowing for some contrast. 
This changes inside the large square, as there are both rigid shapes and straight lines while also having a variety of colors. 
The different colors and sizes causing the viewer to feel both a sense of uniformity and variety, with all the squares interlinked with each other by colorful, but straight lines.
Overall, one can interpret this piece as multiple subjects working together in an organized manner towards a common goal - each bringing their own unique traits and culture with them.
*/
import processing.pdf.*; 
String filename = "LiuRuidong_RandomFinal.pdf";

void setup() {
  size(1152,720);
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
  
  /*
  looks ugly. nope.
  for(int count = 10; count < width-10; count++){
     float r = random(150,200);      
    float g = random(10, 255);      
    float b = random(10, 255);        
    stroke(r, g, b);
    strokeWeight (2);
    line(count, 0, random(10,width-10), height-10);
  }*/
  
  fill(0);
  rect((1152-700)/2,(720-700)/2,700,700);

  strokeWeight(2);
  mboard(width/2, height/2, 300);
  save("LiuRuidong_RandomFinal.png");
  endRecord();
}


void mboard(float x, float y, float bLength) {
  float randInt = random(5,10);

  stroke(random(100,200),random(100,200),random(100,200));
  strokeWeight(random(1,5));

  line(x-bLength/2, y, x+bLength/2, y);
  

  float r = random(1);
    if(r < 0.25) {
      
      line(x-bLength/2, y-bLength/2, x-bLength/2, y+bLength/2);
      fill(random(255),random(255),random(255));
      rect(x-bLength/4, y-bLength/4, bLength, bLength);
      
    }
    else if(r < 0.5) {
      
      line(x+bLength/2, y-bLength/2, x+bLength/2,y+bLength/2);
      fill(random(255),random(255),random(255));
      rect(x+bLength/4, y-bLength/4, bLength,bLength);
    
    }
    
    else if(r < 0.75){
      line(x-bLength/2, y-bLength/2, x-bLength/2, y+bLength/2);
      fill(random(255),random(255),random(255));
      rect(x-bLength/4, y-bLength/4, bLength, bLength);
    }
    
    else {
      line(x+bLength/2, y-bLength/2, x+bLength/2,y+bLength/2);
      fill(random(255),random(255),random(255));
      rect(x+bLength/4, y-bLength/4, bLength,bLength);

    }
    
    
    
  bLength /= 2;
  

  if (bLength > randInt) {
    mboard(x-bLength, y-bLength, bLength);    
    mboard(x-bLength, y+bLength, bLength);    
    mboard(x+bLength, y-bLength, bLength);    
    mboard(x+bLength, y+bLength, bLength);    
  }
}
