ArrayList<Bomba> bombas = new ArrayList<Bomba>();

class Bomba {
  int x = 0;
  int y = 0;
  Bomba(int px, int py) {
    x = px;
    y = py;
    
        if (y == 250 || x == 400) {
      vidas++;
    }
    
  }
  void dibujar() {
    ellipse(x, y, 15, 15);
    image(bfuego, x-10, y-25, 40, 40);
  }
  void avanzar() {
    x-= 3;
  }
}
