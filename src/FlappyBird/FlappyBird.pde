PImage background;
PImage bird;
PImage top;
PImage bottom;
int y=100;
double v=0;
int bothX=540;
int topY=-70;
int bottomY=500;
int r;
boolean touched = false;
int birdX=90;
int score=0;
void setup(){
size(500,750);
background = loadImage("flappyBackground.jpg");
bird = loadImage("FlappyBird.png");
top = loadImage("topPipe.png");
bottom = loadImage("bottomPipe.png");
bird.resize(210/3,160/3);
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
 r = (int) random(-210, -10);
topY= r;
bottomY=r+550;
}
if(y<0){
  y=0;
}
y+=v;
v+=.4;
if(intersected()){
  stop();
}
if((bothX+top.width)==birdX){
  score++;
  System.out.println(score);
}
if(mousePressed){
v=-5;
}


}

boolean intersected(){
  //check Xs
  if(abs(birdX+bird.width/2-bothX-bottom.width/2)<(bird.width/2+bottom.width/2)){
    //check upper and lower
    if((y+bird.height)>(topY+top.height+550)||y<(top.height+topY)){
      return true;
      
    }
  }
  
  return false;
} 
