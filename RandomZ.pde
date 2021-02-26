import processing.pdf.*; 
String filename = "RandomShapes.pdf";

void setup() {
  size(1152, 720);
   beginRecord(PDF, filename);
  background(255);

  // draw 1000 random dots of random color
  for (int i=0; i<1000; i++) {

    // create a random RGB color
    float r = random(0, 255);      // arguments = min,max possible values
    float g = random(0, 255);      // returns a float, so you may have
    float b = random(0, 255);      // to cast it to an integer to use
    fill(r, g, b, 200);             // add some alpha too for depth
    noStroke();
    float ranW = random(width);
    float ranH = random(height);
    float ranX = random(0, 20);
    ellipse(random(width), random(height), ranX, ranX);
    
    rect(random(width), random(height),ranX,ranX);
    
    triangle(ranW, ranH, ranW + ranX, ranH, ranW, ranH+ ranX);
    
    
}
  endRecord();
  exit();         
}
