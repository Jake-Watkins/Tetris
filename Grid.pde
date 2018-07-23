import java.lang.Exception; //<>//
class Grid {
  boolean[][] ifPiece;
  Color[][] colors;
  Grid(int H, int W) {
    ifPiece = new boolean[W][H];
    colors = new Color[W][H];
    for (int i = 0; i<H; i++) {
      for (int j = 0; j < W; j++) {
        ifPiece[j][i] = false;
      }
    }
  }
  Grid() {
    this(24, 10);
  }
  void removePiece(Piece p, int x, int y) {
    Block b = p.blocks.get(0);
    removeBlocks(b, x, y);
  }
  void removeBlocks(Block b, int x, int y) throws ArrayIndexOutOfBoundsException {
    if (b!=null&&b.isPlaced) {
      ifPiece[x][y] = false;
      colors[x][y] = new Color(0, 0, 0);
      b.isPlaced = false;
      b.canPlace = 2;
      removeBlocks(b.leftBlock, x-1, y);
      removeBlocks(b.rightBlock, x+1, y);
      removeBlocks(b.upBlock, x, y+1);
      removeBlocks(b.downBlock, x, y-1);
    }
  }
  void addPiece(Piece p) throws RuntimeException {
    System.out.println("Grid.addPiece");
    if (canPlace(p, 4, 20)) {
      place(p, 4, 20);
    }
  }
  void addPiece(Piece p, int x, int y) throws RuntimeException {
    System.out.println("Grid.addPiece");
    if (canPlace(p, x, y)) {
      place(p, x, y);
    }
  }
  void place(Piece p, int x, int y) {
    System.out.printf("place(Piece p, int %d, int %d)%n", x, y);
    Block b = p.blocks.get(0);
    place(b, x, y);
    b.isPlaced = true;
  }
  void place(Block b, int x, int y) {    
    System.out.printf("place(Block b, int %d, int %d)%n", x, y);

    ifPiece[x][y] = true;
    colors[x][y] = new Color(b.R, b.G, b.B);
    if (b.leftBlock!=null&&!b.leftBlock.isPlaced) {
      place(b.leftBlock, x-1, y);
    }
    b.isPlaced = true;
    if (b.upBlock!=null&&!b.upBlock.isPlaced) {
      place(b.upBlock, x, y+1);
    }
    b.isPlaced = true;
    if (b.rightBlock!=null&&!b.rightBlock.isPlaced) {
      place(b.rightBlock, x+1, y);
    }
    b.isPlaced = true;
    if (b.downBlock!=null&&!b.downBlock.isPlaced) {
      place(b.downBlock, x, y-1);
    }
  }
  boolean canPlace(Piece p, int x, int y) {
    boolean rtn = true;
    Block b = p.blocks.get(0);
    if (!canPlace(b, x, y)) {
      rtn =false;
    }
    return rtn;
  }
  boolean canRotate(Piece p, int x, int y, char c) {
    boolean rtn = true;
    return rtn;
  }
  void rotatePiece(Piece p, int x, int y, char c) {
  
  }
  boolean canPlace(Block b, int x, int y) {
    if (b==null||b.canPlace==1) {
      return true;
    }
    if (x<0||x>9) {
      return false;
    }
    if (y<0||y>23) {
      return false;
    }
    boolean rtn = true;
    if (ifPiece[x][y]==false) {
      b.canPlace=1;
      if (b.leftBlock!=null&&!canPlace(b.leftBlock, x-1, y)) {
        rtn = false;
        b.leftBlock.canPlace = 0;
      }
      if (b.rightBlock!=null&&!canPlace(b.rightBlock, x+1, y)) {
        rtn = false;
        b.rightBlock.canPlace = 0;
      }
      if (b.upBlock!=null&&!canPlace(b.upBlock, x, y+1)) {
        rtn = false;
        b.upBlock.canPlace = 0;
      }
      if (b.downBlock!=null&&!canPlace(b.downBlock, x, y-1)) {
        rtn = false;
        b.downBlock.canPlace = 0;
      }
    } else {
      rtn = false;
    }
    return rtn;
  }
  class Color {
    int R;
    int G;
    int B;
    Color(int R, int G, int B) {
      this.R = R;
      this.G = G;
      this.B = B;
    }
  }
}
