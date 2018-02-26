/*
 敵キャラクラス
*/
class Enemy extends Point{
  boolean flag;  //フラグ
  int cnt;  //カウンタ
  int pattern;  //移動パターン
  int direction;  //向き
  int e_type;  //敵の種類
  int hp;  //現在のHP
  int hp_max;  //最大HP
  PImage img;  //敵機の画像
  
  int item;  //落とすアイテムの種類
  
  float vx;  //速度x成分
  float vy;  //速度y成分
  float sp;  //スピード
  float ang;  //角度
  
  int fire_time;
  int barrage_type;  //弾幕の種類
  int bullet_type;  //弾の種類
  int cool_time;  //待機時間
  
  Enemy(){
    flag = false;
  }
  
  void load_enemy_image(){
    System.out.println("*** LOAD ENEMY IMAGE ***");
    img = requestImage("enemy"+e_type+".png"); //スケッチが失速しないようにするため
  }
  void flush(){
    println("flag"+flag+" cnt"+cnt+" pattern"+pattern+" e_type"+e_type+" hp"+hp+" hp_max"+hp_max+" x"+getX()+" y"+getY());
    println("vx"+vx+" vy"+vy+" sp"+sp+" ang"+ang+" fire_time"+fire_time+" barrage_type"+barrage_type+" bullet_type"+bullet_type);
  }
}