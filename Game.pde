import java.util.ArrayList;
import java.util.Random;
import java.lang.Exception;

class Game{
  Random rand;
  Board board;
  ArrayList<Piece> pieces;
  ArrayList<Piece> upcoming;
  int score;
  Game(){
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
  void addPiece(){
    Piece currentPiece = upcoming.remove(0);
    upcoming.add(pieces.get(rand.nextInt(7)));
    board.addPiece(currentPiece);
  }
  void init(){
    for(int i = 0 ; i < 3 ; i++){
      upcoming.add(pieces.get(rand.nextInt(7)));
    }
    
    drawMenu();
    board.draw();
    
  }
  void gameloop(){
  
  }
  void draw(){
    drawMenu();
    board.draw();
  }
  void drawMenu(){
    //whole rightside
    fill(0,0,0);
    stroke(0,255,0);
    rect(Tetris.blocksize * 10 + 1 , 1,width - Tetris.blocksize * 10-2, height-2);
    rect(Tetris.blocksize * 10 + 1 , 0,width - Tetris.blocksize * 10-2, height / 3.0);
    fill(0,255,0);
    text("SCORE", width - Tetris.blocksize * 5 , height / 8.0); 
    updateScore();
    updateUpcoming();
  }
  void updateUpcoming(){
    for( int i = 0;i<upcoming.size();i++){
      drawPiece(upcoming.get(i),i);
    }
  }
  void drawPiece(Piece p, int i) throws RuntimeException{
  }
  void updateScore(){
    fill(0,255,0);
    text(Integer.toString(score), width - Tetris.blocksize * 5 , height / 6.0); 
  }
}
