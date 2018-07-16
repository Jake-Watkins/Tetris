import java.util.List;

class Block{
  Block upBlock;
  Block downBlock;
  Block leftBlock;
  Block rightBlock;
  int R,G,B;
  Block(int R, int G, int B){
    this.R = R;
    this.B = B;
    this.G = G;
  }
  Block(){
    R = 0;
    B = 0;
    G = 255;
  }
}
