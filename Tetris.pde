Game game;
static float blocksize;
PFont f;
boolean activePiece;
void setup(){
  f = createFont("Cantarell Regular", 24);
  textFont(f);
  background(0);    
  textAlign(CENTER);
  size(480,640);
  blocksize = height/24.0;
  noStroke();
  strokeCap(SQUARE);
  game = new Game();
  game.init();
  game.draw();
  activePiece = false;
}

void draw(){
  if(!activePiece){
    game.addPiece();
    activePiece = true;
  }
  game.draw();
}
void keyPressed(){
  game.board.movePiece(key);
}
