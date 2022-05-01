Fixlag lag = new Fixlag();

class Fixlag {
  void eliminarBalasPerdidas() {
    ArrayList<Bala> balasElim = new ArrayList <Bala>();
    for (Bala b : balas) {
      if (b.y <0) {
        balasElim.add(b);
      }
    }
    balas.removeAll(balasElim);
    //removeAll es un iterator.
  }
  void eliminarBombasPerdidas() {
    {
      ArrayList<Bomba> bombasElim = new ArrayList <Bomba>();
      for (Bomba b : bombas) {
        if (b.y >500) {
          bombasElim.add(b);
        }
      }
      bombas.removeAll(bombasElim);
    }
  }
}
