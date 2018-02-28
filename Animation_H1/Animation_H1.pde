int numFrames = 2;
PImage[] h1 = new PImage[numFrames];
PImage[] h2 = new PImage[numFrames];
PImage[] h3 = new PImage[numFrames];
boolean up,down,left,right;
boolean shotButton;
int x,y;
int spd;
int shot_cnt;

void setup(){
  background(255);
  size(300, 300, FX2D);
  frameRate(30);
  for(int i=0; i<h1.length; i++){
    h1[i] = loadImage("player_h1_"+i+".png");
    h2[i] = loadImage("player_h2_"+i+".png");
    h3[i] = loadImage("player_h3_"+i+".png");
  }
  up = false;
  down = false;
  left = false;
  right = false;
  x = 100;
  y = 100;
  spd = 4;
}

void draw(){
  background(255);
  int frame = frameCount % numFrames;
  //image(h1[frame], x, y);
  charaMoveImage(frame);
  charaMove();
}

void keyPressed(){
  switch(keyCode){
    case UP:
      up = true;
      break;
    case DOWN:
      down = true;
      break;
    case LEFT:
      left = true;
      break;
    case RIGHT:
      right = true;
      break;
  }
  switch(key){
    case 'z':
    case 'Z':
      shotButton = true;
      break;
  }
}

void keyReleased(){
  switch(keyCode){
    case UP:
      up = false;
      break;
    case DOWN:
      down = false;
      break;
    case LEFT:
      left = false;
      break;
    case RIGHT:
      right = false;
  }
  switch(key){
    case 'z':
    case 'Z':
      shotButton = false;
      break;
  }
}

void charaMove(){
  if(up){
    y -= spd;
  }
  if(down){
    y += spd;
  }
  if(left){
    x -= spd;
  }
  if(right){
    x += spd;
  }
}

void charaMoveImage(int frame){
  if(left && right){
    image(h1[frame], x, y);
  }else if(left){
    image(h2[frame], x, y);
  }else if(right){
    image(h3[frame], x, y);
  }else{
    image(h1[frame], x, y);
  }
}

void charaShotMain(){
  enterCharaShot();
  calcCharaShot();
}

void enterCharaShot(){
  
}

void calcCharaShot(){
   
}