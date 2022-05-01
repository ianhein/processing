float sueloY = 390; //posicion eje y del suelo
float jugadorY = 100;//posicion eje y del jugador
float jugadorX = 140;//posicion eje x del jugador
float jugadorAnchura = 20;
float jugadorAltura = 50;
float jugadorVelocidadY = 0;

player p = new player();

public class player {
  float x1=0,x2=0,y1=0,y2=0;
  player(){
  x1=jugadorX;
  x2=jugadorX+jugadorAnchura;
  y1=jugadorY-jugadorAltura/2;
  y2=jugadorY+jugadorAltura/2;
  }
  
  void dibujar() {
    jugadorY += jugadorVelocidadY;
    if (jugadorY + jugadorAltura > sueloY) {
      jugadorY = sueloY - jugadorAltura;
      jugadorVelocidadY = 0;
      salto = false;
    } else {
      jugadorVelocidadY ++;
    }
    image(loopingGif, jugadorX, jugadorY );
    y1=jugadorY+jugadorAltura;
  y2=jugadorY+jugadorAltura*2;
  }

  void teclaApretada(int code) {
    if (code==17) {
      //DISPARAR
      Bala aux = new Bala(jugadorX, jugadorY+50);
      balas.add(aux);
    }
    if (code==32) {
      if (!salto) {
        jugadorVelocidadY = -18;
        salto = true;
      } 
    }
  }
}
void keyPressed() {
  p.teclaApretada(keyCode);
}
