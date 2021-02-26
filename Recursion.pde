//Title: Pyramidal Stairs
//Experimentation with recursion and 3D

void setup() {
  size(800,800);
  background(50,50,205);

  for (int x = -10; x<width; x+=10) {
    rect(x-10,x, x,height);
    rect(width - x, width -x, x,height);
  }
  
  drawFunc(0);
  line(0,10,790,800);
save("LiuRuidong_Recursion.png");
}


void drawFunc(int x) {
  
  x += 5;
  

  if (x > width) { 
    return;
  }
  if(x > width/3){
  fill(x/2+50,x+5,x+5);
  }
  else if(x >400){
  fill (200,20,20);
  } 
  //Turns stuff blue. Wanted to split the 'stairs' into 3 portions - Red, Blue, Green. Ended up with white.
  else{
  fill(x+50,x/2+10,x/2+10);}
  rect(x-10, x, x, height);
  drawFunc(x);
}
