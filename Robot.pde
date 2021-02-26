//Title: Red Dreams
//Name: Ruidong LIU
void setup() {
  //Face
  size(800,800);
  background(155,250,155);
  
  fill(0,55,55,255);
  stroke(0);  
  rect(10,10,780,780);
  for(int count = 0; count < 800; count = count + 10){
  fill(10,120,10);
  ellipse(count,count,count+1,5);
  }
  
  for(int count = 25; count < 800; count = count +50){
  fill(105,205,205);
  rect(count, count, 10, 800);
  fill(255,255,205);
  rect(0, count, count,10);
  }
  
for(int count = 700; count < 800; count = count + 10){
  int rad = 10;
  rad = rad+10;
  fill(120,120,10);
  ellipse(rad,count,rad,count);
  }
  

  
   fill(255,00, 00);
  ellipse(200,200,100,100);
     fill(255,00, 00);
  ellipse(600,200,100,100);
  fill(255,00, 00);
  arc(400,500,400,330,0,PI);
    //Arms
  fill(150,150, 50);
  beginShape();
vertex(330,300);
vertex(380,300);
vertex(320,420);
vertex(270,420);
vertex(330,300);
  endShape();
  
beginShape();
fill(150,150, 50);
vertex(470,300);
vertex(420,300);
vertex(470,420);
vertex(520,420);
vertex(470,300);
endShape();

  //Legs
  fill(150,150, 50);
  beginShape();
  vertex(300,500);    
  vertex(350,500);    
  vertex(400,400);
  vertex(350,400);
  vertex(300,500);  
  vertex(500,500);    
  vertex(450,500);    
  vertex(400,400);
  vertex(450,400);
  vertex(500,500);  
  endShape();
  //torso
  beginShape();
  fill(50,50,100);
  vertex(350,400);
  vertex(350,300);
  vertex(450,400);
  vertex(450,300);
  vertex(350,400);
  endShape();
  beginShape();
  fill(150,150, 250);
  vertex(350,400);
  vertex(450,400);
  vertex(310,300);
  vertex(490,300);
  vertex(350,400);
  endShape();
  beginShape();
  fill(150,150, 250);
  vertex(380,400);
  vertex(310,300);
  vertex(490,300);
  vertex(350,400);
  endShape();
  //Space itself is a color

  beginShape();
   fill(255,00, 00);
  vertex(360,300);
  vertex(440,300);
  vertex(440,220);
  vertex(360,220);
    vertex(360,300);
  
  endShape();
  fill(255,255,255);
  ellipse(380,250,10,10);
     
      fill(255,255,255);
  ellipse(420,250,10,10);
     
     arc(400,270,30,30,0,PI);
save("LiuRuidong_ROBOT.png");
}
