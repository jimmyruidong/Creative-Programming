//M
//Ruidong Liu
int gridSize = 10;
int color1 = 200;
int color2 = 200;
int color3 = 200;
int x = 0;
int y = 0;
int z = 0;

void setup() {
  size(800, 800);
  background(255, 255, 255);
  //GradientCreator(Grid)
  for (y=0; y<height+200; y+=gridSize) {   
    for (x=0; x<width+200; x+=gridSize) {
      pushMatrix();
      translate(x, y);
      fill(((color1 - (x/5))), ( color2 - (x/10) + (y/15)), ( color3 - (x/15)));
      noStroke();
      rect(gridSize-50, gridSize-50, gridSize, gridSize);//initialize grid for pattern
      /*if (((y/50) & 1) == 1 && ((x/50) & 1) == 1 || ((y/50) & 1) == 0 && ((x/50) & 1) == 0 ){
       fill(((color4 + (x/2))),( color5 + (x/4) +y/2),( color6 + (x/3)));
       noStroke();
       ellipse(pillarSize-25,pillarSize-25,pillarSize/10, pillarSize*11/6); 
       }
       else{
       fill(((color4 + (x/2))),( color5 + (x/4) +y/2),( color6 + (x/3)));
       noStroke();
       ellipse(pillarSize-25,pillarSize-25,pillarSize*11/6, pillarSize/10); 
       }*/
      popMatrix();
    }
  }

  //NeedleCreator 
  //Values
  int pillarSize = 50;      


  int color4 = 10;
  int color5 = 10;
  int color6 = 10;
  //Function
  // Creates ... Crosses ish? Think of the manhole covers. Goal is to make counterGradiant
  for (y=-100; y<height+200; y+=pillarSize) {   
    for (x=-100; x<width+200; x+=pillarSize) {
      pushMatrix();

      translate(x, y);
      if (((y/50) & 1) == 1 && ((x/50) & 1) == 1 || ((y/50) & 1) == 0 && ((x/50) & 1) == 0 ) {
        fill(((color4 + (x/2))), ( color5 + (x/4) +y/2), ( color6 + (x/3)));
        noStroke();
        ellipse(pillarSize-25, pillarSize-25, pillarSize/10, pillarSize*11/6);
      } else {
        fill(((color4 + (x/2))), ( color5 + (x/4) +y/2), ( color6 + (x/3)));
        noStroke();
        ellipse(pillarSize-25, pillarSize-25, pillarSize*11/6, pillarSize/10);
      }
      popMatrix();
    }
  }

  for (y=-100; y<height+200; y+=pillarSize) {   
    for (x=-100; x<width+200; x+=pillarSize) {
      rotate(PI/PI);
      pushMatrix();
      translate(x, y);
      //Creating light pink bundles of lines
      if (((y/50) & 1) == 1 && ((x/50) & 1) == 1 || ((y/50) & 1) == 0 && ((x/50) & 1) == 0 ) {
        fill((200), ( 200), (200));
        noStroke();
        ellipse(pillarSize-25, pillarSize-25, pillarSize/25, pillarSize*100/6);
      }
      //creating colored, individual straight lines. Flight Paths 
      else {
        fill((color6+(x-1.5)), (color4+x/2), (color5+x/2.5));
        noStroke();
        ellipse(pillarSize-25, pillarSize-25, pillarSize*50/6, pillarSize/25);
      }
      popMatrix();
    }
  }

  save("LiuRuidong_QUILT");
}
/*
Notes/Critical : Decision to not use "Strokes" or borders. Want lines to look as they are. Experimented with strokes/outlines but did not fit view.
 Originally wanted to do a kaleidoscope -esque design based off squares and a lot of rotations /sqeezing "Paper leafs in air", but couldnt rotate properly. Will work on it later?
 Probably should learn how to use arrays for coloring better. current form coloring is a chore & rather ineffective.
 
 Notes/Design :
 Representation of the world w/ colours. Pink lines are meant to represent flight paths. Inspiration based off the topographical maps 
 (Also the airline flight paths mixed with longtitute/latitude lines.)
 Not a very traditional quilt. Sorry. I saw it more as a scarf or handkerchief
 */
