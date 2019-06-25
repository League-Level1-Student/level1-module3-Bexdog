PImage background;
PImage frog;
PImage carLeft;
PImage carRight;
int lcarX=750;
int lcarY=300;
int lcarYi=1;
int rcarX=0;
int rcarY=375;
int rcarYi=1;
int lcarSpeed=8;
int rcarSpeed=9;
int frogY=510;
int frogX=400;
void setup(){
  size(844,600);
  background=loadImage("froggerBackground.png");
  frog = loadImage("frog.png");
  frog.resize(110,110);
  carLeft=loadImage("lcar.png");
  carLeft.resize(150,60);
  carRight=loadImage("rcar.png");
  carRight.resize(150,60);
}
void draw(){
  background(background);
  image(frog,frogX,frogY);
  image(carLeft,lcarX,lcarY);
  image(carRight,rcarX,rcarY);
if((frogX+frog.width/2)<=0){
  frogX=15;
}
if(frogX>=844){
  frogX=785;
}
if((frogY+frog.height/2)<=0){
  frogY=-28;
}
if(frogY>=587){
  frogY=510;
}
lcarX-=lcarSpeed;
rcarX+=rcarSpeed;
if(lcarX<=-125){
  lcarX=750;
  lcarYi+=1;
  if(lcarYi%2==0){
    if(lcarYi%3==0){
      lcarY=140;
    }
    else{
      lcarY=225;
    }  
}
  else{
    lcarY=300;
  }
}
if(rcarX>=850){
  rcarX=0;
  rcarYi+=1;
  if(rcarYi%2==0){
      rcarY=460;
    }
    else{
      rcarY=375;
    } 
}
if(frogY==48){
  System.out.println("You Win");
  stop();
}
if (((frogY > lcarY) && (frogY < lcarY+carLeft.height) && (frogX > lcarX) && (frogX < lcarX+carLeft.width))||
   ((frogY > rcarY) && (frogY < rcarY+carRight.height) && (frogX > rcarX) && (frogX < rcarX+carRight.width)))
      {
             stop();
      }
      else 
      {
             System.out.println(frogY+" "+lcarY+ " "+ rcarY);
      }
}
      

void keyPressed() {
      if(key == CODED){
            if(keyCode == UP)
            {
              frogY-=77;
              
              //Frog Y position goes up
            }
            else if(keyCode == DOWN)
            {
              frogY+=77;
                  //Frog Y position goes down 
            }
            else if(keyCode == RIGHT)
            {
              frogX+=77;   
              //Frog X position goes right
            }
            else if(keyCode == LEFT)
            {
              frogX-=77;
                  //Frog X position goes left
            }
      }
      
}
