Mover mover;
Bullet bullet;
//Enemy enemy;
void setup(){
  size(900,900);
  mover = new Mover();
  bullet = new Bullet();
}
void draw(){
  background(255);
  mover.display();
  bullet.display();
  bullet.move();
}
void mouseClicked(){
  bullet.move = true;
}