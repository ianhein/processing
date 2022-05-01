estados a=new estados();

public class estados {
  void gameOver() {
    imageMode(CORNER);
    image(gameover, 0, 0);
  }
  void intro() {
    imageMode(CORNER);
    image(intro, 0, 0);
    image(loopingGif, 420, 280);
  }
}
