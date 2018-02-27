/*
自機キャラクラス
*/


class Player extends Point {
  private int cnt;  //カウンタ
  private int power1;  //威力
  private int power2;
  private int lives = 3;  //残機数
  private int speed = 4;  //速度
  private int bom_stock = 0;  //残ボム数
  private int shot_cnt;
  
  private int p_width;
  private int p_height;
  
  private int pshot_cnt;
  private int is_accept_input;
  private int is_bombing;
  
  private int start_x[] = {
    -5, 5,
    -10, 10,
    -5, 5,
    -10, 10,
    -4, 4
  };
  
  private int start_y[] = {
    6, 6,
    6, 6,
    2, 2,
    6, 6,
    2, 2
  };
  
  Player(){
    Image.charaImg = loadImage("player1.png");
  }
  
  
}