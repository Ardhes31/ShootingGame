class Enemy{
  float enemyX;
  float enemyY;
  float speedY;
  boolean move;
  Enemy(int Xpositions){
    enemyX = Xpositions;
    enemyY = 100;
    speedY = 3;
    move = true;
  }
  void display(){
    rect(enemyX,enemyY,50,50,10);
  }
  void move(){
    if(move){
      enemyY += speedY;
    }
    if(enemyY>height){
      enemyY=0;
    }
  }
}  
