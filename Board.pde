class Board {
  Grid grid;
  Piece currentPiece;
  int xActivePiece;
  int yActivePiece;
  Random rand;
  Board() {
    System.out.println("Board");
    grid = new Grid();
    currentPiece = null;
    xActivePiece = -1;
    yActivePiece = -1;
    rand = new Random();
  }
  void addPiece(Piece p, int x, int y) {
    setCurrentPiece(p);
    grid.addPiece(p, x, y);
    xActivePiece = x;
    yActivePiece = y;
  }
  void addPiece(Piece p) {
    System.out.println("addPiece");
    addPiece(p, 4, 20);
  }
  void setCurrentPiece(Piece p) {
    System.out.println("setCurrentPiece");
    currentPiece = p;
  }
  void movePiece(char c) {
    System.out.printf("movePiece: %s%n", key);
    grid.removePiece(currentPiece, xActivePiece, yActivePiece);
    switch(c) {
    case 'w': 
      if (grid.canPlace(currentPiece, xActivePiece, yActivePiece+1)) {
        yActivePiece = yActivePiece+1;
      }
      break;
    case 'a':
      if (grid.canPlace(currentPiece, xActivePiece-1, yActivePiece)) {
        xActivePiece = xActivePiece - 1;
      } 
      break;
    case 's':
      if (grid.canPlace(currentPiece, xActivePiece, yActivePiece-1)) {
        yActivePiece = yActivePiece-1;
      } 
      break;
    case 'd':
      if (grid.canPlace(currentPiece, xActivePiece+1, yActivePiece)) {
        xActivePiece = xActivePiece + 1;
      } 
      break;
    case 'q':
      if (grid.canRotate(currentPiece, xActivePiece, yActivePiece, c)) {
        grid.rotatePiece(currentPiece, xActivePiece, yActivePiece, c);
      }
      break;
    case 'e':
      if (grid.canRotate(currentPiece, xActivePiece, yActivePiece, c) ) {
        grid.rotatePiece(currentPiece, xActivePiece, yActivePiece, c);
      }
      break;
    case ' ':
      System.out.println("SetPiece");
      if (grid.canSet(currentPiece, xActivePiece, yActivePiece)) {
        grid.setPiece(currentPiece, xActivePiece, yActivePiece);
        break;
      }
    }
    addPiece(currentPiece, xActivePiece, yActivePiece);
  }
  void draw() {
    for (int x = 0; x < 10; x ++) {
      for (int y = 0; y < 24; y++) {
        if (grid.ifPiece[x][y]==true) {
          stroke(255, 0, 0);
          fill(grid.colors[x][y].R, grid.colors[x][y].G, grid.colors[x][y].B);
          //fill(rand.nextInt(255), rand.nextInt(255), rand.nextInt(255));
          rect(x*blocksize, (23-y)*blocksize, blocksize, blocksize);
        } else {
          stroke(100);
          stroke(rand.nextInt(255), rand.nextInt(255), rand.nextInt(255));
          //fill(rand.nextInt(255),rand.nextInt(255),rand.nextInt(255));
          fill(0);
          rect(x*blocksize, (23-y)*blocksize, blocksize, blocksize);
        }
      }
    }
  }
}
