/*
  自機のショット
*/

class CharaShot extends Point{
  private boolean flag;
  private int power;
  private int cnt;
  private int type;
  private float angle;
  private float spd;
  
  CharaShot(){
    flag = false;
    power = 0;
  }
  
  public boolean getFlag(){
    return this.flag;
  }
  
  public void setFlag(boolean flag){
    this.flag = flag;
  }
  
  public int getPower(){
    return this.power;
  }
  
  public void setPower(int power){
    this.power = power;
  }
  
  public int getCnt(){
    return this.cnt;
  }
  
  public void setCnt(int cnt){
    this.cnt = cnt;
  }
  
  public int getType(){
    return this.type;
  }
  
  public void setType(int type){
    this.type = type;
  }
  
  public float getAngle(){
    return this.angle;
  }
  
  public void setAngle(float angle){
    this.angle = angle;
  }
  
  public float getSpd(){
    return this.spd;
  }
  
  public void getSpd(float spd){
    this.spd = spd;
  }
}