class Brick{
  int x;
  int y;
  int w; 
  int h;
  
  public Brick(int x, int y, int w, int h){
    this.x=x;
    this.y=y;
    this.w=w;
    this.h=h;
  }
  
  void display(){
    fill((int)(Math.random()*255), 255, 255);
    rect(x, y, w, h);
  }
  int getBrickX(){
    return x;
  }
   int getBrickY(){
    return y;
  }
  
}
