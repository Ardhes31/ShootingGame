Mover mover;
Bullet bullet;
Bullet[] bullets;
int BulletCount;
//Enemy enemy;
Enemy[] enemies;
int EnemyCount;
int Xpositions;
void setup(){
  size(900,900);
  mover = new Mover();
  bullet = new Bullet();
  bullets = new Bullet[10];
  //enemy = new Enemy( Xpositions);
  EnemyCount = 5;
  enemies = new Enemy[EnemyCount];
  rectMode(CENTER);
  BulletCount = 0;
  for(int r = 0; r<EnemyCount; r++){                        //5 nepřátel
    int Xpositions = r * (width/EnemyCount) + width/(EnemyCount*2);
    enemies[r] = new Enemy(Xpositions);
  }
}
void draw(){
  background(255);
  mover.display();
  bullet.display();
  //enemy.display();
  //enemy.move();
  bullet.move();
  for(int i = 0; i<BulletCount;i++){
    bullets[i].display();
    bullets[i].move();
  }
  for(int r = 0; r<EnemyCount; r++){
    enemies[r].display();
    enemies[r].move();
  }
}
void mouseClicked(){
  bullets[BulletCount] = new Bullet();
  bullets[BulletCount].move = true;
  BulletCount ++;
}
