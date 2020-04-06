class Bullet{
  float bulletX;                       //x-ová souřadnice bulletu
  float bulletY;                       //y-ová souřadnice bulletu
  float speedX;                        //rychlost bulletu
  float speedY;                        //
  boolean move;
  Bullet(){
    bulletX = width/2;
    bulletY = height-100;
    speedX = 5;
    speedY = 5;
    move = false;
  }
  void display(){
    if(move){
      circle(bulletX,bulletY,20);    
    } else circle(mouseX,height-100,20);
  }
  void move(){
    if(move){
      //bulletX +=speedX;
      bulletY -=speedY;
    }
  }

}
