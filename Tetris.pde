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
/*import java.util.Random;
boolean[][] buffer;
boolean[][] ifBlocks;
float[][] offset;
float spacer;
int time;
long start;
Random rand;
static int ODDS = 5;
static int H = 20;
static int W = 10;
void setup() {
  start = java.lang.System.currentTimeMillis();
  rand = new Random();
  background(0);
  size(480,640);
  noStroke();
  strokeCap(SQUARE);
  ifBlocks = new boolean[10][21];
  buffer = new boolean[10][21];
  offset = new float[10][21];
  spacer = height/20;
  for (int x = 0; x < W ; x ++){
    for (int y = 0; y < H+1 ; y++){
      int m = rand.nextInt(ODDS);
      if(m==0){
        ifBlocks[x][y] = true;
      }
      else{
        ifBlocks[x][y] = false;
      }
    }
  }
  time = second();
}

void draw(){
  if (time!=second()){
    advanceGame();
    buffer = ifBlocks;
    time = second();
  }
  else{
    update();
  }
}


void update(){
  for (int x = 0; x < W ; x ++){
      for (int y = 0; y < H ; y++){
        if(buffer[x][y]==true){
          stroke(255,0,0);
          fill(255,255,255);
          rect(x*spacer,(18-y)*spacer+(System.currentTimeMillis()%1000)*spacer/1000,spacer,spacer);
        }
        else{
          stroke(0,0,0);
          fill(0,0,0);
          rect(x*spacer,(18-y)*spacer+(System.currentTimeMillis()%1000)*spacer/1000,spacer,spacer);
        }
      }
    }
}
void advanceGame(){
  //move everything down one
  for (int x = 0; x < W ; x ++){
    for (int y = 0; y < H ; y++){
        ifBlocks[x][y] = ifBlocks[x][y+1];
    }
  }
  //build a new row at the top
  for (int x = 0; x < W ; x ++){
    ifBlocks[x][H-1] = rand.nextInt(ODDS)==0?true:false;
  }
}*/
