import java.util.ArrayList; //<>//
import java.util.Random;
import java.lang.Exception;

class Game {
  Random rand;
  Board board;
  ArrayList<Piece> pieces;
  ArrayList<Piece> upcoming;
  int score;
  Game() {
    rand = new Random();
    board = new Board();
    pieces = new ArrayList<Piece>();
    pieces.add(new Piece('I'));
    pieces.add(new Piece('J'));
    pieces.add(new Piece('L'));
    pieces.add(new Piece('Z'));
    pieces.add(new Piece('S'));
    pieces.add(new Piece('T'));
    pieces.add(new Piece('O'));

    score = 0;
    upcoming = new ArrayList<Piece>();
  }
  void addPiece() {
    Piece currentPiece = upcoming.remove(0);
    upcoming.add(new Piece(pieces.get(rand.nextInt(7)).type));
    board.addPiece(currentPiece);
  }
  void init() {
    for (int i = 0; i < 3; i++) {
      upcoming.add(pieces.get(rand.nextInt(7)));
      System.out.printf("upcoming %d: %s %n", i, upcoming.get(i).type);
    }

    drawMenu();
    board.draw();
  }
  void gameloop() {
  }
  void draw() {
    drawMenu();
    board.draw();
  }
  void drawMenu() {
    //whole rightside
    try {
      fill(0, 0, 0);
      stroke(0, 255, 0);
      rect(Tetris.blocksize * 10 + 1, 1, width - Tetris.blocksize * 10-2, height-2);
      rect(Tetris.blocksize * 10 + 1, 0, width - Tetris.blocksize * 10-2, height / 3.0);
      fill(0, 255, 0);
      text("SCORE", width - Tetris.blocksize * 5, height / 8.0); 
      updateScore();
      updateUpcoming();
    }
    catch(Exception e) {
      System.err.println("Menu not finished yet");
    }
  }
  void updateUpcoming() {
    for ( int i = 0; i<upcoming.size(); i++) {
      drawPiece(upcoming.get(upcoming.size() - i - 1), i);
    }
    for ( Piece p : upcoming) {
      for ( Block b : p.blocks) {
        b.isDrawn = false;
      }
    }
  }
  void drawPiece(Piece p, int i) throws RuntimeException {
    Block b  = p.blocks.get(0);
    if (!b.isDrawn) {

      float x = (width + Tetris.blocksize * 10)/2;
      float y = height - (i+1) * Tetris.blocksize * 4;
      drawBlock(b, x, y);
    }
  }
  void drawBlock(Block b, float x, float y) {
    if (b!=null &&!b.isDrawn) {
      b.isDrawn = true;
      try {
        fill(b.R, b.G, b.B);
        stroke(255);
        rect(x, y, Tetris.blocksize, Tetris.blocksize);
      }
      catch(Exception e) {
        System.err.println(e);
      }
      drawBlock(b.downBlock, x, y-Tetris.blocksize);
      drawBlock(b.upBlock, x, y+Tetris.blocksize);
      drawBlock(b.leftBlock, x-Tetris.blocksize, y);
      drawBlock(b.rightBlock, x+Tetris.blocksize, y);
    }
  }
  void updateScore() {
    fill(0, 255, 0);
    text(Integer.toString(score), width - Tetris.blocksize * 5, height / 6.0);
  }
  void listUpcoming(){
  for (int i = 0; i < upcoming.size(); i++) {
      System.out.printf("upcoming %d: %s %n", i, upcoming.get(i).type);
    }
  }
}
