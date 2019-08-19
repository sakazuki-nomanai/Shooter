import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

/**
  2018 NIT,Yuge Micon Club

  @author T.Murakami
  b58v.oeg@gmail.com

  シューティングゲームの元型
  使えるかもしれない
*/


PFont font;
//PImage Player;  //自機画像
//int gameSeq;  //ゲーム進行制御
//int pX;  //
//int pY;
//int bX;
//int bY;
//int pWidth;
//int pHeight;
//int pBulletSize;
//int dx;
//int dy;
//boolean keyUP;
//boolean keyDOWN;
//boolean keyRIGHT;
//boolean keyLEFT;
//boolean isShot;

void setup() {
  size(500, 700, FX2D);
  //Player = loadImage("player1.png");
  Image.charaImg = loadImage("player1.png");
  Image.bulletImg = loadImage("plater_shot1.png");
  Image.enemyBulletImg = loadImage("enemybullet1.png");
  background(0);
  fill(255);
  font = createFont("Meiryo UI", 10.5);
  textFont(font);
  smooth();
  noCursor();
  //gameInit();
}

void draw() {
  switch(GameSetting.game_state){
    case 0:
      break;
    case 1:
      break;
    case 2:
      break;
    case 3:
      break;
    default:
      println("不明な状態");
      break;
  }
}

void gameTitle() {
  //gameSeq = 1;
}

//void gamePlay(){
  //background(255);
  //movePlayer();
  //dispPlayer();
  //shotBullet();
//}

//void dispPlayer() {

//  fill(255, 0, 0);
//  ellipse(pX, pY, pWidth, pHeight);
//  if(key != 'i'){
//    image(Player, pX-pWidth, pY-pHeight, 34, 31);
//  }
//}

//void movePlayer(){

//  if(keyUP == true){
//    pY-=dy;
//  }else if(keyDOWN == true){
//    pY+=dy;
//  }else if(keyLEFT == true){
//    pX-=dx;
//  }else if(keyRIGHT == true){
//    pX+=dx;
//  }

//  if((pX+pWidth) > width){
//    pX = width - pWidth;
//  }else if(pX < 0){
//    pX=0;
//  }

//  if((pY+pHeight) > height){
//    pY = height - pHeight;
//  }else if(pY < 0){
//    pY = 0;
//  }
//}

void keyPressed(){
  switch(keyCode) {
    case UP:
      Input.up = true;
      break;
    case DOWN:
      Input.down = true;
      break;
    case LEFT:
      Input.left = true;
      break;
    case RIGHT:
      Input.right = true;
      break;
  }
}

void keyReleased(){
  switch(keyCode) {
    case UP:
      Input.up = false;
      break;
    case DOWN:
      Input.down = false;
      break;
    case LEFT:
      Input.left = false;
      break;
    case RIGHT:
      Input.right = false;
      break;
  }
}


//void shotBullet(){
//  if(isShot == true){
//    ellipse(bX, bY, pBulletSize, pBulletSize);
//    bY-=3;
//  }
//  if(bY < 0){
//    isShot=false;
//    bY=pY;
//    bX=pX;
//  }

//}

//void gameInit() {
//  gameSeq=0;
//  pX=width/2;
//  pY=height/2;
//  bX=pX;
//  bY=pY;
//  pWidth=15;
//  pHeight=15;
//  pBulletSize=2;
//  dx=2;
//  dy=2;
//  keyUP=false;
//  keyDOWN=false;
//  keyRIGHT=false;
//  keyLEFT=false;
//  isShot=false;
//}