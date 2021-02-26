//Literally forgot to save my work and got my code anniliated by 400 lines. 
//Cloud and grass were meant to be animated..
//There was originally a set of 'armor' made for this poor fella, but now he has no clothes.'
//Also was supposed to hold something in each hand.
int moveX;
int b;



void setup() {
  size(600, 900);
  background (255);
  lighting();
  moveX = 0;
  clouds();
  drawBody();
  clothing();
  grass();
  save("LiuRuidongFinalProject.png");
}

void draw() {
}

void lighting() {
  
  String time;
  float choice = random(1); 
  if(choice <= (0.333)){
   
    time = "dawndusk";
  }
  
  else if(choice <= (0.666)){
    
    time = "day";
  }
  
  else {
    time = "night";
  }
  
  int gridSize = 10;
  int x = 0;
  int y = 0;

  if (time == "dawndusk") {

   // background(255, 200, 0);
    for (y=0; y<height+200; y+=gridSize) {   
      for (x=0; x<width+200; x+=gridSize) {
        pushMatrix();
        translate(x, y);
        fill(((200 + (x/2))), (200 - (x/10) + (y/15)), (200 - (x/15)));
        noStroke();
        rect(gridSize-50, gridSize-50, gridSize, gridSize);
        popMatrix();
        }
    }
    noStroke();
    fill(255, 153, 0);
    arc(0, 0, 250, 250, 0, PI+QUARTER_PI, CHORD);
    //draw clouds and sunset.
  } 
  
  else if (time == "day") {
    
    //background (204, 242, 255);
    for (y=0; y<height+200; y+=gridSize) {   
      for (x=0; x<width+200; x+=gridSize) {
        pushMatrix();
        translate(x, y);
        fill(((255 - (x/5))), ( 255 - (x/10) + (y/15)), ( 255 - (x/15)));
        noStroke();
        rect(gridSize-50, gridSize-50, gridSize, gridSize);
        popMatrix();
        }
    }
    noStroke();
    fill(255, 255, 153);
    arc(0, 0, 250, 250, 0, PI+QUARTER_PI, CHORD);
    //draw clouds and sun
   
  } 
  
  else if (time == "night") {

    //background (0, 0, 77);
    for (y=0; y<height+200; y+=gridSize) {   
      for (x=0; x<width+200; x+=gridSize) {
        pushMatrix();
        translate(x, y);
        fill(((50 - (x/2))), (50 - (x/10) + (y/15)), (100 - (x/15)));
        noStroke();
        rect(gridSize-50, gridSize-50, gridSize, gridSize);//initialize grid for pattern
        popMatrix();
        }
    }
    
    noStroke();
    fill(240);
    arc(0, 0, 250, 250, 0, PI+QUARTER_PI, CHORD);
        // draw clouds
  }
}
void clouds() {
  //Cloud #1
  fill(255);
  ellipse(moveX+ 40, 80, 115, 80);
  if(moveX==width+100)
  moveX=-100;
  
   fill(255);
  ellipse(moveX + 40, 120, 210, 80);
  if(moveX==width+100)
  moveX=-100;
}
void grass() {
  for (int x =0; x<width; x+=2) {
    stroke(10, random(150, 255), 0);
    strokeWeight(random(3, 7));
    line(x+random(-10, 10), random(700, 900), x, height);
  }
}

void words() {
}

void drawBody() {
  float choice = random(1); 
  if(choice <= (0.25)){
   fill(255, 247, 230);
  }
  
  else if(choice <= (0.5)){
    
    fill(255, 239, 204);
  }
  
  else if(choice <= (0.75)){
    fill(255, 223, 153);
  }
  else {
    fill(230, 157, 0);
  }
  stroke(150);
  noStroke();
  random(1);
  drawNeck();
  drawHead();
  
  
  drawLArm();
  drawRArm();
  drawLLeg();
  drawRLeg();
  drawUTorso();
  drawLTorso();
}
void drawNeck(){
  rect(280,80,40,100);
}


void drawHead() {
  //head
  ellipse(300, 80, 100, 120);
}

void drawUTorso() {
  //Upper Torso
  beginShape();
  vertex(220, 150);
  vertex(380, 150);
  vertex(360, 350);
  vertex(240, 350);
  vertex(220, 150);
  endShape();
}

void drawLTorso() {
  //Lower Torso
  beginShape();
  vertex(360, 350);
  vertex(240, 350);
  vertex(220, 450);
  vertex(380, 450);
  vertex(360, 350);
  endShape();
}

void drawLArm() {
  //left arm
   rect(170,150,80,50);
  beginShape();
  vertex(220, 150);
  vertex(170, 150);
  vertex(120, 500);
  vertex(170, 500);
  vertex(220, 150);
  endShape();
}

void drawRArm() {
  //right arm
  rect(330,150,80,50);
  beginShape();
  vertex(380, 150);
  vertex(430, 150);
  vertex(480, 500);
  vertex(430, 500);
  vertex(380, 150);
  endShape();
}

void drawLLeg() {
  //left leg
  beginShape();
  vertex(220, 450);
  vertex(300, 450);
  vertex(220, 800);
  vertex(180, 800);
  vertex(220, 450);
  endShape();
}

void drawRLeg() {
  //right leg
  beginShape();
  vertex(300, 450);
  vertex(380, 450);
  vertex(420, 800);
  vertex(380, 800);
  vertex(300, 450);
  endShape();
}
void clothing(){
  float choice = random(1); 

  if(choice <= (0.1)){
    headwear("armor");
    topClothing("armor");
    lowerClothing("armor");
  }
  
  else {
    headwear("casual");
  topClothing("casual");
  lowerClothing("casual");
  }
  
  
}
void headwear(String wearing) {
  if (wearing == "armor") {
    beginShape();
    endShape();
  } else if (wearing == "casual") {
    fill(random(255), random(255), random(255));
    rect(260,5,80,40);
    fill(random(255),random(255),random(255));
    rect(230,45,140,20);
    //draw hat
    
  }
}

void topClothing(String wearing) {
  if (wearing == "armor") {
    // draw plate armor
    //light grey, dark grey, gold
  } else if (wearing == "casual") {
    noStroke();
    
    beginShape();
    endShape();
    
    fill(random(255),random(255),random(255));
    beginShape();
      vertex(380, 150);
  vertex(430, 150);
  vertex(465, 300);
  vertex(380, 300);
  vertex(380, 150);
  endShape();
    beginShape();
  vertex(220, 150);
  vertex(170, 150);
  vertex(135, 300);
  vertex(220, 300);
  vertex(220, 150);
  endShape();
  fill(random(255),random(255),random(255));
    beginShape();
  vertex(200, 150);
  vertex(400, 150);
  vertex(380, 450);
  vertex(220, 450);
  vertex(200, 150);
  endShape();
  fill(random(255),random(255),random(255));
  beginShape();
  vertex(270, 150);
  vertex(330, 150);
  vertex(330, 270);
  vertex(270, 270);
  vertex(270, 150);
  endShape();
  fill(random(255),random(255),random(255));
  beginShape();
  vertex(250, 265);
  vertex(330, 250);
  vertex(330, 280);
  vertex(250, 300);
  vertex(250, 265);
  endShape();
    //draw shirt
  }
}

void lowerClothing(String wearing) {
  if (wearing == "armor") {
 /*   //draw plate armor  beginShape();
   noStroke();
   fill(random(255),random(255),random(255));
      beginShape();
      vertex(200, 150);
  vertex(400, 150);
  vertex(380, 450);
  vertex(220, 450);
  vertex(200, 150);
    endShape();
    beginShape();
  vertex(220, 400);
  vertex(380, 400);
  vertex(260, 800);
  vertex(170, 800);
  endShape();*/
  
    //light grey, dark grey, gold
  } else if (wearing == "casual") {
      fill(random(255),random(255),random(255));
    beginShape();

  vertex(390, 350);
  vertex(210, 350);
  vertex(210, 400);
  vertex(390, 400);
  endShape();
  fill(random(255),random(255),random(255));
    beginShape();

  vertex(340, 350);
  vertex(280, 350);
  vertex(280, 400);
  vertex(340, 400);
  endShape();
  
    fill(random(255),random(255),random(255));
    beginShape();

  vertex(330, 360);
  vertex(290, 360);
  vertex(290, 390);
  vertex(330, 390);
  endShape();
  
  beginShape();
  vertex(210, 400);
  vertex(320, 400);
  vertex(220, 900);
  vertex(170, 900);
  endShape();
  
   beginShape();
  vertex(280, 400);
  vertex(390, 400);
  vertex(430, 900);
  vertex(380, 900);
   endShape();
  }
}

void lHand(String holding) {
  if (holding == "sword") {
    //draw sword
    //brown/dark grey shaft, light grey/red/gold top
  } else if (holding == "shield") {
    //draw shield
    //brown/dark grey shaft, light grey/red/gold top
  } else if (holding == "spear") {
    // draw spear
    //brown/dark grey shaft, light grey/red/gold top
  } else if (holding == "axe") {
    // draw axe
    //brown/dark grey shaft, light grey/red/gold top
  }
}

void rHand(String holding) {
  if (holding == "sword") {
    //draw sword
    //brown/dark grey shaft, light grey/red/gold top
  } else if (holding == "shield") {
    //draw shield
  } else if (holding == "spear") {
    // draw spear
    //brown/dark grey shaft, light grey/red/gold tip
  } else if (holding == "axe") {
    // draw axe
    //brown/dark grey shaft, light grey/red/gold top
  }
}
