
float c = 0;
int pics = 7;
float chance = 14;
PImage [] pictures;
int pic = 0;
float s = 1;
float t = 0;
boolean tone = true;

void setup() {
  fullScreen(1);
  colorMode(HSB, 360, 100, 100, 100);
  //frameRate(15);
  pictures = new PImage[pics];
  
  for (int i = 1; i <= pics; i++) {
    pictures[i-1] = loadImage("data/"+i+".png");
    // println(pictures[i]);
  }
}


void draw() {
  fill(0, 5);
  
  rect(0,0,width, height);
  
  if(tone)
    tint(c, 100, 100);
  else
    noTint();
    
  scale(s);
  image(pictures[pic], t, 0, pictures[pic].width, pictures[pic].height);
  c = c < 360 ? c + noise(0): 0;
  
  changePic();
}

void changePic() {
  float k = random(0.0, 124.0);
  if(k < pics-1) {
    s = random(0.5, 1.7);  
    pic = round(k);
    t = random(-width/2, width/2);
    tone = random(-1, 1) > 0 ? true: false;
    println(pic);
  }
  // println(tone);
 
}
