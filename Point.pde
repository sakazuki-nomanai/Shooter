/**
  全キャラ共通の座標管理クラス
  先輩のプログラムを参考にして作成
*/

class Point{
  private float x;
  private float y;
  
  //コンストラクタ
  Point(){
    x=250;
    y=680;
  }
  
  Point(float x, float y){
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