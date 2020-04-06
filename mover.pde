class Mover{
  float moverX;                        //x-ová souřadnice movera
  float moverY;                        //y-ová souřadnice movera
  float moverSpeed;                    // rychlost movera
  Mover(){                          //tady se mover vytvari(konstruktor)
    moverX = width/2;
    moverY = height-100;
  }
  void display(){                   //tady se mover zobrazuje    
    rect(mouseX,height-100,50,50,10);
  }
}
