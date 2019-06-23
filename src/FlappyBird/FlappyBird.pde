PImage background;
PImage bird;
PImage top;
int y=100;
double v=0;
int topX=430;
void setup(){
size(500,750);
background = loadImage("flappyBackground.jpg");
bird = loadImage("bird.png");
top = loadImage("topPipe.png");
bird.resize(90,90);
}

void draw(){
background(background);
image(bird,90,y);
image(top,topX,0);
topX-=2;
if(topX<-10){
 topX=430;
}
y+=v;
v+=.7;
if(mousePressed){
v=-9;
}
}
