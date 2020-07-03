String img = "18";
int x = 70;//70;  // -1
int y = 10;//45; // -1
PImage [] frames = new PImage[x*y];
int ix = 0;
int i = 0;
int [] delayDist = { 0,  10,  20,  20,  30,  30,  40,  40,  40,  50,  50,  50,  50,
        60,  60,  60,  60,  70,  70,  70,  70,  70,  80,  80,  80,  80,
        80,  80,  90,  90,  90,  90,  90,  90, 100, 100,  90,  90,  90,
        90,  90,  90,  80,  80,  80,  80,  80,  80,  70,  70,  70,  70,
        70,  60,  60,  60,  60,  50,  50,  50,  50,  40,  40,  40,  30,
        30,  20,  20,  10,   0};
int hw;
int hh;

void setup() {
 
  for(int _y = 0; _y < y; _y++) {
    for(int _x = 0; _x < x; _x++) {
      String filename = "../exported_fragments/"+img+"-"+_y+"-"+_x+".jpg";
      frames[ix] = loadImage(filename);
      //println(filename);
      ix++;
    }
  }
 
  fullScreen(1);
  imageMode(CENTER);
  hw = width/2;
  hh = height/2;
  frameRate(14);
}

void draw() {
  fill(0);
  rect(0, 0, width, height);
  pushMatrix();
  translate(hw, hh);
  image(frames[i], 0, 0, frames[i].width*2, frames[i].height*2);
  
  // delay(delayDist[i%x]*3);
  i++;
  if (i == ix)
    i = 0;
  // println(i%x);
  popMatrix();
  saveFrame("frames/###.tif");
}
