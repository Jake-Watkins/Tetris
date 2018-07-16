class Piece{
  List<Block> blocks;
  List<Block> bottomBlocks;
  Block a,b,c,d; //<>//
  Piece(char type){
    switch(type){
      /*
      A
      B
      CD
      */
      case 'L': a = new Block();
                blocks.add(a);
                b = new Block();
                blocks.add(b);
                a.downBlock = b;
                b.upBlock = a;
                c = new Block();
                blocks.add(c);
                bottomBlocks.add(c);
                b.downBlock = c;
                c.upBlock = b;
                d = new Block();
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
      case 'J': a = new Block();
                blocks.add(a);
                b = new Block();
                blocks.add(b);
                a.downBlock = b;
                b.upBlock = a;
                c = new Block();
                blocks.add(c);
                bottomBlocks.add(c);
                b.downBlock = c;
                c.upBlock = b;
                d = new Block();
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
      case 'I': a = new Block();
                blocks.add(a);
                b = new Block();
                blocks.add(b);
                a.downBlock = b;
                b.upBlock = a;
                c = new Block();
                blocks.add(c);
                bottomBlocks.add(c);
                b.downBlock = c;
                c.upBlock = b;
                d = new Block();
                blocks.add(d);
                bottomBlocks.add(d);
                c.downBlock = d;
                d.upBlock = c;
                break;
      /*
      AD
      BC
      */
      case 'O': a = new Block();
                blocks.add(a);
                b = new Block();
                blocks.add(b);
                bottomBlocks.add(b);
                a.downBlock = b;
                b.upBlock = a;
                c = new Block();
                blocks.add(c);
                bottomBlocks.add(c);
                c.leftBlock = b;
                b.rightBlock = c;
                d = new Block();
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
      case 'S': a = new Block();
                b = new Block();
                c = new Block();
                d = new Block();
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
      case 'T': a = new Block();
                b = new Block();
                c = new Block();
                d = new Block();
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
      case 'Z': a = new Block();
                b = new Block();
                c = new Block();
                d = new Block();
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
      default:System.err.println("Wrong letter block");
    }
  }
}
