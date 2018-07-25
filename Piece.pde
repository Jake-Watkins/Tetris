class Piece { //<>//
  List<Block> blocks;
  List<Block> bottomBlocks;
  Block a, b, c, d;
  char type;
  void rotatePiece(char c) {
    if (c=='e') {
      for (Block b : blocks) {
        Block temp = b.upBlock;
        b.upBlock = b.rightBlock;
        b.rightBlock = b.downBlock;
        b.downBlock = b.leftBlock;
        b.leftBlock = temp;
      }
    } else {
      for (Block b : blocks) {
        Block temp = b.upBlock;
        b.upBlock = b.leftBlock;
        b.leftBlock = b.downBlock;
        b.downBlock = b.rightBlock;
        b.rightBlock = temp;
      }
    }
  }
  Piece(char type) {
    blocks = new ArrayList<Block>();
    bottomBlocks = new ArrayList<Block>();
    this.type = type;
    switch(type) {
      /*
      A
       B
       CD
       */
    case 'L': 
      a = new Block(0, 255, 0);
      blocks.add(a);
      b = new Block(0, 255, 0);
      blocks.add(b);
      a.downBlock = b;
      b.upBlock = a;
      c = new Block(0, 255, 0);
      blocks.add(c);
      bottomBlocks.add(c);
      b.downBlock = c;
      c.upBlock = b;
      d = new Block(0, 255, 0);
      blocks.add(d);
      bottomBlocks.add(d);
      c.rightBlock = d;
      d.leftBlock = c;
      break;
      /*
       A
       B
       DC
       */
    case 'J': 
      a = new Block(0, 255, 0);
      blocks.add(a);
      b = new Block(0, 255, 0);
      blocks.add(b);
      a.downBlock = b;
      b.upBlock = a;
      c = new Block(0, 255, 0);
      blocks.add(c);
      bottomBlocks.add(c);
      b.downBlock = c;
      c.upBlock = b;
      d = new Block(0, 255, 0);
      blocks.add(d);
      bottomBlocks.add(d);
      c.leftBlock = d;
      d.rightBlock = c;
      break;
      /*
      A
       B
       C
       D
       */
    case 'I': 
      a = new Block(0, 255, 255);
      blocks.add(a);
      b = new Block(0, 255, 255);
      blocks.add(b);
      a.downBlock = b;
      b.upBlock = a;
      c = new Block(0, 255, 255);
      blocks.add(c);
      bottomBlocks.add(c);
      b.downBlock = c;
      c.upBlock = b;
      d = new Block(0, 255, 255);
      blocks.add(d);
      bottomBlocks.add(d);
      c.downBlock = d;
      d.upBlock = c;
      break;
      /*
      AD
       BC
       */
    case 'O': 
      a = new Block(0, 255, 0);
      blocks.add(a);
      b = new Block(0, 255, 0);
      blocks.add(b);
      bottomBlocks.add(b);
      a.downBlock = b;
      b.upBlock = a;
      c = new Block(0, 255, 0);
      blocks.add(c);
      bottomBlocks.add(c);
      c.leftBlock = b;
      b.rightBlock = c;
      d = new Block(0, 255, 0);
      blocks.add(d);
      bottomBlocks.add(d);
      d.downBlock = c;
      c.upBlock = d;
      d.leftBlock = a;
      a.rightBlock = d;
      break;
      /*
       BA
       DC
       */
    case 'S': 
      a = new Block(0, 255, 0);
      b = new Block(0, 255, 0);
      c = new Block(0, 255, 0);
      d = new Block(0, 255, 0);
      blocks.add(a);
      blocks.add(b);
      blocks.add(c);
      blocks.add(d);
      bottomBlocks.add(c);
      bottomBlocks.add(d);
      a.leftBlock = b;
      b.downBlock = c;
      c.leftBlock = d;
      d.rightBlock = c;
      c.upBlock = b;
      b.rightBlock = a;
      break;
      /*
       A
       BCD
       */
    case 'T': 
      a = new Block(0, 255, 0);
      b = new Block(0, 255, 0);
      c = new Block(0, 255, 0);
      d = new Block(0, 255, 0);
      blocks.add(a);
      blocks.add(b);
      blocks.add(c);
      blocks.add(d);
      bottomBlocks.add(b);
      bottomBlocks.add(c);
      bottomBlocks.add(d);
      a.downBlock = c;
      c.upBlock = a;
      b.rightBlock = c;
      c.leftBlock = b;
      c.rightBlock = d;
      d.leftBlock = c;
      break;
      /*
      AB
       CD
       */
    case 'Z': 
      a = new Block(0, 255, 0);
      b = new Block(0, 255, 0);
      c = new Block(0, 255, 0);
      d = new Block(0, 255, 0);
      blocks.add(a);
      blocks.add(b);
      blocks.add(c);
      blocks.add(d);
      bottomBlocks.add(c);
      bottomBlocks.add(d);
      a.rightBlock = b;
      b.leftBlock = a;
      b.downBlock = c;
      c.upBlock = b;
      c.rightBlock = d;
      d.leftBlock = c;
      break;
    default:
      System.err.println("Wrong letter block");
    }
  }
}
