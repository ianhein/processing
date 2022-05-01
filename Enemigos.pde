ArrayList<Enemigo> enemigos = new ArrayList<Enemigo>();

class Enemigo {
  int x=0;
  int y=0;
  boolean izquierda = true;
  Enemigo(int py) {
    y = 400;
    x = int(random( 900,1900));;
    int coin = int(random(0, 10));
    if (coin < 5) {
      izquierda=true;
    } else {
      izquierda=false;
    }
  }
  void dibujar() {
    ellipse(x, y, 50, 50);
    image(enemigo,x-73,y-83,150,140);
  }
  void avanzar() {
    if (izquierda) {
      x-=2;
    } else {
      x-=2;
    }
    if (x<0) {
      x=width;
      //izquierda=false;
    }
    //if (x>10) {
    //  izquierda=true;
    //}

    int moneda = int(random(0, 200));
    if (moneda==5) {
      Bomba nvaBomba= new Bomba(x, y);
      bombas.add(nvaBomba);
    }
  }
}
