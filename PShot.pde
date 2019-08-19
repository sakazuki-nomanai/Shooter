/**
  自弾の構造体もどき
*/

class PShot extends Point{
  boolean flag;
  int power;
  int cnt;
  int knd;
  float angle;
  float spd;
  
  PShot(){
    flag = false;
    power = 0;
  }
}