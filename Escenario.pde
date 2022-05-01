escenario e=new escenario();

public class escenario {
  void actualizar() {
    imageMode(CORNER);
    image(fondo, x, 0);
    image(fondo, x+fondo.width, 0);
    x-=6;
    if (x<-3595) { 
      x=0;
    }
  }
}
