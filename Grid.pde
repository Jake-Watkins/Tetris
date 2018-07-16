class Grid{
  boolean[][] ifPiece;
  Grid(int H, int W){
    ifPiece = new boolean[W][H];
    for (int i = 0;i<H;i++){
      for (int j = 0; j < W; j++){
        ifPiece[j][i] = false;
      }
    }
  }
  Grid(){
    this(24,10);
  }
  void addPiece(Piece p){
    for (int i = 0 ; i < 4 ; i++){
      for (int j = 0 ; j < 4 ; j++){
        ifPiece[4+i][20+j] = p.template[i][j];
      }
    }
  }
}
