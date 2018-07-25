import java.util.List;

class Block{
  Block upBlock;
  Block downBlock;
  Block leftBlock;
  Block rightBlock;
  boolean isPlaced;
  boolean isDrawn;
  int canPlace;//2 = not checked
               //1 = can place
               //0 = cannot place
  int R,G,B;
  Block(int R, int G, int B){
  System.out.println("Block");
    this.R = R;
    this.B = B;
    this.G = G;
    upBlock = null;
    downBlock = null;
    leftBlock = null;
    rightBlock = null;
    canPlace = 2;
    isPlaced = false;
    isDrawn = false;
  }
}
