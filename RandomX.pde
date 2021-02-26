import processing.pdf.*; 
String filename = "RandomStar.pdf";


void setup()
{
  size(3200, 2000);
}

void draw()
{
  background(0);

  for (int x = 1; x <360; x ++) {
    float r = random(0, 255);      
    float g = random(0, 255);      
    float b = random(0, 255);        
    stroke(r, g, b, 200);
    lineAngle(width/2, height/2, x, random(10, height));
  }
  /*
  endRecord();
   exit();*/
    saveFrame("line-######.pdf");
}

void lineAngle(int x, int y, float angle, float length)
{
  line(x, y, x+cos(angle)*length, y-sin(angle)*length);
}
