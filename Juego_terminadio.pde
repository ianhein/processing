import gifAnimation.*;
PImage avion;
PImage fondo;
PImage gameover;
PImage intro;
PImage[] animation;
PImage enemigo;
PImage bfuego;
int estado=0;
int cant=5;
int vidas=5;
int x=0, y, vy = 0;
boolean salto = false;
Gif loopingGif;//targeta grafica


void setup () {
  size (900, 500);
  fondo = loadImage("fondo.png");
  intro = loadImage("intro.png");
  loopingGif = new Gif(this, "gtx1080.gif");
  loopingGif.loop();
  animation = Gif.getPImages(this, "gtx1080.gif");
  gameover = loadImage("game over.png");
  rasho = loadImage("Rayo.png");
  bfuego = loadImage("fuego.png");
  enemigo = loadImage("termometro.png");
  for (int i = 0; i<5/* cant de enemigos*/; i++) {
    Enemigo nvoEnemigo= new Enemigo(i *100+20);
    enemigos.add(nvoEnemigo);
    textSize(40);
  }
}
void draw() {
  background(0);
  frameRate(60);
  if (estado==0) {
    a.intro();

    if (mousePressed == true) {
      {
        estado=1;
      }
    }
  }
  if (estado==1) {  
    e.actualizar();
    p.dibujar();
    cle.colisionBalaEnemigo();
    cle.colisionBalaBomba();
    lag.eliminarBalasPerdidas();
    lag.eliminarBombasPerdidas();
    if (keyPressed) {
      if (key=='2') {
        estado=2;
      }
    }
    for (Bala x : balas) {
      x.avanzar();
      x.dibujar();
    }
    for (Enemigo x : enemigos) {
      x.avanzar();
      x.dibujar();
    }
    for (Bomba x : bombas) {
      x.avanzar();
      x.dibujar();

      fill(0);
      text(""+vidas, 165, 65);
      text("Vidas:", 45, 65);
      text("Puntaje:", 600, 65);
      text(""+score, 760, 65);
      if (x.x<p.x2 && x.x>p.x1 && x.y<p.y2 && x.y>p.y1) {
        vidas--;
        println(vidas);
        if (vidas==0)
          estado=2;
        x.y=501;
      }
    }
  }

  if (estado==2) {
    e.actualizar();
    a.gameOver();

    if (keyPressed) {
      if (key==ESC) {
        exit();
      }
    }
  }
}
