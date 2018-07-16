class Piece{
  boolean[][] template;
  int R,G,B;
  Piece(){
    template = new boolean[4][4];
    for (int i = 0;i < 4 ; i++){
      for ( int j = 0; j <4; j ++){
        template[i][j] = false;
      }
    }
  }
  Piece copyOf(){
    Piece p = new Piece();
      p.R = R;
      p.G = G;
      p.B = B;
       for(int i = 0; i < 4 ; i++){
      for(int j = 0; j < 4 ; j++){
        p.template[i][j] = template[i][j]; //<>//
      }
    }
    return p;
  }
  void rotate(){
    Piece p = this.copyOf();
    for(int i = 0; i < 4 ; i++){
      for(int j = 0; j < 4 ; j++){
        template[i][j] = p.template[3-j][i];
      }
    }
  }
}

class IPiece extends Piece{
  IPiece(){
    super();
    template[0][0] = true;
    template[0][1] = true;
    template[0][2] = true;
    template[0][3] = true;
    R = 0;
    G = 255;
    B = 255;
  }
}

class JPiece extends Piece{
  JPiece(){
    super();
    template[0][1] = true;
    template[1][1] = true;
    template[2][1] = true;
    template[2][0] = true;
    R = 0;
    G = 0;
    B = 255;
  }
}

class LPiece extends Piece{
  LPiece(){
    super();
    template[0][0] = true;
    template[0][1] = true;
    template[1][1] = true;
    template[2][1] = true;
    R = 255;
    G = 165;
    B = 0;
  }
}

class OPiece extends Piece{
  OPiece(){
    super();
    template[0][0] = true;
    template[0][1] = true;
    template[1][1] = true;
    template[1][0] = true;
    R = 255;
    G = 255;
    B = 0;
  }
}

class SPiece extends Piece{
  SPiece(){
    super();
    template[0][0] = true;
    template[1][0] = true;
    template[1][1] = true;
    template[2][1] = true;
    R = 0;
    G = 255;
    B = 0;
  }
}

class TPiece extends Piece{
  TPiece(){
    super();
    template[0][0] = true;
    template[1][0] = true;
    template[2][0] = true;
    template[1][1] = true;
    R = 128;
    G = 0;
    B = 128;
  }
}

class ZPiece extends Piece{
  ZPiece(){
    super();
    template[0][1] = true;
    template[1][1] = true;
    template[1][0] = true;
    template[2][0] = true;
    R = 255;
    G = 0;
    B = 0;
  }
}
