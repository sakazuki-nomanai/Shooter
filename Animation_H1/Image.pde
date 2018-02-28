class Image {
  private final int numFrames = 2;
  private PImage[] h1 = new PImage[numFrames];
  private PImage[] h2 = new PImage[numFrames];
  private PImage[] h3 = new PImage[numFrames];
  
  public void setH1(String imgName, int frame){
    for(int i=0; i<h1.length; i++){
      this.h1[i] = loadImage(imgName+i+".png");
    }
  }
}