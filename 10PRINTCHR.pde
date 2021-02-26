  int x;
  int x2;
  int y;
  int y2;
  int str;
  int dia;
  
void setup() {
  
  size(800,800);
  background(255);
  
  

  x = 0;
  y = 0;
  x2= 20;
  y2 = 20;
  str = 20;
  dia = 20;
  
  while(true){
    float r = random(1);
    strokeWeight(5);
    if(r < 0.25) {

      line(x+str,y,x+str,y+str);
      
    }
    else if(r < 0.5) {
      
      line(x+str,y+str,x,y+str);
    
    }
    
    else if(r < 0.75){
      
      line(x,y,x+dia,y+dia);
    }
    
    else if(r <=1){
    
      line(x,y+dia,x+dia,y);
      
    }
    if (x == width){
    x=0;
    y+=20;
    }
    else{
    x+=20;
    }
    
    if(y==height){
    break;
    }
  }
  save("LiuRuidong_10PRINTCHR.png");
}
