class Board{
  Grid grid;
  Piece currentPiece;
  int xActivePiece;
  int yActivePiece;
  Board(){
    grid = new Grid();
    currentPiece = null;
    xActivePiece = -1;
    yActivePiece = -1;
  }
  void addPiece(Piece p){
    setCurrentPiece(p);
    grid.addPiece(p);
    xActivePiece = 3;
    yActivePiece = 20;
  }
  void setCurrentPiece(Piece p){
    currentPiece = p;
  }
  void movePiece(char c){
   switch(c){
    case 'w': 
              break;
    case 'a':
              break;
    case 's':
              break;
    case 'd':
  }
  }
  void draw(){
    for (int x = 0; x < 10 ; x ++){
      for (int y = 0; y < 24 ; y++){
        if(grid.ifPiece[x][y]==true){
          stroke(255,0,0);
          fill(255,0,0);
          rect(x*blocksize,(23-y)*blocksize,blocksize,blocksize);
        }
        else{
          stroke(100);
          fill(0);
          rect(x*blocksize,(23-y)*blocksize,blocksize,blocksize);
        }
      }
    }
  }
}
