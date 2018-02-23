/**
  c 2018 Micon Club, Tomoya Murakami
  Author:Tomoya Murakami
  シューティングゲームの元型
  使えるかもしれない
*/


PFont font;
PImage Player;
int gameSeq;
int pX;
int pY;
int bX;
int bY;
int pWidth;
int pHeight;
int pBulletSize;
int dx;
int dy;
boolean keyUP;
boolean keyDOWN;
boolean keyRIGHT;
boolean keyLEFT;
boolean isShot;

void setup() {
  size(500, 700);
  Player = loadImage("player1.png");
  background(0);
  fill(255);
  font = createFont("Meiryo UI", 10.5);
  textFont(font);
  smooth();
  noCursor();
  gameInit();
}

void draw() {
  if(gameSeq == 0){
    gameTitle();
  }else if(gameSeq == 1){
    gamePlay();
  }  
}

void gameTitle() {
  gameSeq = 1;
}

void gamePlay(){
  background(255);
  movePlayer();
  dispPlayer();
  shotBullet();
}

void dispPlayer() {
  
  fill(255, 0, 0);
  ellipse(pX, pY, pWidth, pHeight);
  if(key != 'i'){
    image(Player, pX-pWidth, pY-pHeight, 34, 31);
  }
}

void movePlayer(){
  
  if(keyUP == true){
    pY-=dy;
  }else if(keyDOWN == true){
    pY+=dy;
  }else if(keyLEFT == true){
    pX-=dx;
  }else if(keyRIGHT == true){
    pX+=dx;
  }
  
  if((pX+pWidth) > width){
    pX = width - pWidth;
  }else if(pX < 0){
    pX=0;
  }
  
  if((pY+pHeight) > height){
    pY = height - pHeight;
  }else if(pY < 0){
    pY = 0;
  }
}

void keyPressed(){
  if(key == 's'){
    isShot=true;
  }
  if(key == CODED){
    if(keyCode == UP){
      keyUP=true;
    }else{
      keyUP=false;
    }
    if(keyCode == DOWN){
      keyDOWN=true;
    }else{
      keyDOWN=false;
    }
    if(keyCode == RIGHT){
      keyRIGHT=true;
    }else{
      keyRIGHT=false;
    }
    if(keyCode == LEFT){
      keyLEFT=true;
    }else{
      keyLEFT=false;
    }
  }
}

void keyReleased(){
  keyUP=false;
  keyDOWN=false;
  keyRIGHT=false;
  keyLEFT=false;
}


void shotBullet(){
  if(isShot == true){
    ellipse(bX, bY, pBulletSize, pBulletSize);
    bY-=3;
  }
  if(bY < 0){
    isShot=false;
    bY=pY;
    bX=pX;
  }
  
}

void gameInit() {
  gameSeq=0;
  pX=width/2;
  pY=height/2;
  bX=pX;
  bY=pY;
  pWidth=15;
  pHeight=15;
  pBulletSize=2;
  dx=2;
  dy=2;
  keyUP=false;
  keyDOWN=false;
  keyRIGHT=false;
  keyLEFT=false;
  isShot=false;
}