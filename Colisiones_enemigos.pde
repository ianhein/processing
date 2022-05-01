colEnemy cle= new colEnemy();
int  score= 0, highScore = 0; //puntuación y puntuación máxima


public class colEnemy {
  void colisionBalaEnemigo() {
    ArrayList<Bala> balasElim = new ArrayList <Bala>();
    ArrayList<Enemigo> enemigosElim = new ArrayList<Enemigo>();
    for (Bala b : balas) {
      for (Enemigo e : enemigos) {
        float dist = sqrt(pow(b.x-e.x, 2)+ pow(b.y-e.y, 2));
        if (dist <20) {
          balasElim.add(b);
          enemigosElim.add(e);

          score++;
          highScore = max(score, highScore);
        }
      }
    }
    balas.removeAll(balasElim);
    enemigos.removeAll(enemigosElim);
  }
  void colisionBalaBomba() {
    ArrayList<Bala>balasElim= new ArrayList<Bala>();
    ArrayList<Bomba>bombasElim= new ArrayList<Bomba>();
    for (Bala ba : balas) {
      for (Bomba bo : bombas) {
        float dist = sqrt(pow(bo.x-ba.x, 2)+ pow(bo.y-ba.y, 2));
        if (dist < 20) {
          balasElim.add(ba);
          bombasElim.add(bo);
        }
      }
    }
    balas.removeAll(balasElim);
    bombas.removeAll(bombasElim);
  }
}
