PImage background;
PImage bird;
PImage top;
PImage bottom;
int y=100;
double v=0;
int bothX=540;
int topY=-70;
int bottomY=500;
boolean touched = false;
void setup(){
size(500,750);
background = loadImage("flappyBackground.jpg");
bird = loadImage("bird.png");
top = loadImage("topPipe.png");
bottom = loadImage("bottomPipe.png");
bird.resize(70,70);
}

void draw(){

  background(background);
image(bird,90,y);
image(top,bothX,topY);
image(bottom,bothX,bottomY);
bothX-=2;
if(y>=620){
 stop();
}

if(bothX<-40){
 bothX=430;
 int r = (int) random(-230, -10);
topY= r;
bottomY=r+550;
}
if(y<0){
  y=0;
}
y+=v;
v+=.4;
if(mousePressed && touched ==false){
v=-5;
}
else if(touched ==true){
  v=-5;
}
}
