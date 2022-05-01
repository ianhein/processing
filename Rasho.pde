ArrayList<Bala> balas = new ArrayList<Bala>();
PImage  rasho;

class Bala {
  float x = 0;
  float y = 0;
  Bala(float px, float py) {
    x = px;
    y = py;
  }
  void dibujar() {
    image(rasho, x, y, 100, 20);
  }
  void avanzar() {
    x+=15;
  }
}
