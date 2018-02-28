/*
  共通の座標管理クラス
*/

class Point{
  private float x;
  private float y;
  
  Point(){
    x = 150;
    y = 100;
  }
  
  Point(int x, int y){
    this.x = x;
    this.y = y;
  }
  
  float getX(){
    return this.x;
  }
  
  float getY(){
    return this.y;
  }
  
}