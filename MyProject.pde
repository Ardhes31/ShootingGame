Mover mover;
Bullet bullet;
Bullet[] bullets;
int BulletCount;
//Enemy enemy;
void setup(){
  size(900,900);
  mover = new Mover();
  bullet = new Bullet();
  bullets = new Bullet[10];
  rectMode(CENTER);
  BulletCount = 0;
}
void draw(){
  background(255);
  mover.display();
  bullet.display();
  bullet.move();
  for(int i = 0; i<BulletCount;i++){
    bullets[i].display();
    bullets[i].move();
  }
}
void mouseClicked(){
  bullets[BulletCount] = new Bullet();
  bullets[BulletCount].move = true;
  BulletCount ++;
}
