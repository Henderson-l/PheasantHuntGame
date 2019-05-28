float xrect = 350;
float yrect = 800;
float w = 70;
float h = 15;
float r = 7;
float dX = random(5, 6);
float dY = random(2, 3);
float xBall = 350;
float yBall = 450;
float ballTop;
float ballRight;
float ballLeft;
float padX1;
float padX2;

void setup() {
  size(700, 900);
}


void draw() {
  background(0, 51, 102);
  //bricks
  bricks();
  //paddle
  fill(255, 255, 255);
  rect(xrect, yrect, w, h, r);
  
  //ball
  fill((int)(Math.random()*250)+6, (int)(Math.random()*250)+6, (int)(Math.random()*250)+6);
  rect(xBall, yBall, 15, 15);

  xBall = xBall + dX;
  yBall = yBall + dY;
  
 // ball bouncing off sides 
  if (xBall>=690){
      dX= dX*-1;
  }
  if (xBall<=0){
    dX= dX*-1;
  }
  if (yBall<=0){
    dY= dY*-1;
  }
  if(xBall <= xrect+w && xBall > xrect && yBall >= yrect-10){
     dY = dY * -1;
  }
  
  //game over
   if (yBall>=900) {
    dX=0;
    dY=0;
    textSize(40);
    fill(255, 255, 255);
    text("GAME OVER", 250, 400);
  }

  
}

//moving paddle from side to side
void keyPressed() { 
  if (key == CODED) {
    if (keyCode==LEFT) {
      xrect = xrect - 40;
    } else if (keyCode==RIGHT) {
      xrect = xrect + 40;
    }
  }
}



//collision between pad and ball
boolean padCollision(){
  boolean padCollide=false;
   if (xBall == xrect && yBall== yrect){
    padCollide=true;
   }
   return padCollide;
  
}

void bricks() {

  int y = 350;
  int a = 255;
  int b = 255;
  int c = 255;
  for ( int j=150; j<y; j+=25) {
    int count = 0;
    for ( int i = 0; i<15; i++) {
      int [] brick = new int [15];
      brick[i]=count;
      fill(a, b, c);
      rect(brick[i], j, 45, 20);
      count +=50;
    }
  }

    }

  
