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
int frogY=535;
int frogX=425;
int carW;
int carH;
boolean debug = false;
void setup(){
  size(844,600);
  background=loadImage("froggerBackground.png");
  frog = loadImage("frog.png");
  frog.resize(60,60);
  carLeft=loadImage("lcar.png");
  carLeft.resize(160,60);
  carRight=loadImage("rcar.png");
  carRight.resize(160,60);
  carH = carLeft.height;
  carW = carLeft.width-20;
}
void draw(){
  background(background);
  if(debug){
  rect(lcarX,lcarY,150,60);
  rect(frogX,frogY,frog.height,frog.width);
  }
  image(frog,frogX,frogY);
  
  image(carLeft,lcarX,lcarY);
  if(debug){
   rect(rcarX,rcarY,150,60);
  }
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
if(frogY==73){
  System.out.println("You Win");
  stop();
}
if ((abs(frogY - lcarY)<carH && /*(abs(frogY+frog.height-lcarY-carH) < carH) &&*/ abs(frogX +frog.width-lcarX-carW)<carW && (frogX < lcarX+carW))||
   (abs(frogY - rcarY)<carH && /*(abs(frogY+frog.height-rcarY-carH) < carH) &&*/ abs(frogX +frog.width-rcarX-carW)<carW && (frogX < rcarX+carW)))
      {
        System.out.println("You lose");    
        stop();
      }
      else 
      {
        if(debug){
             System.out.println(frogY+" "+lcarY+ " "+ rcarY + " "+carLeft.width+" "+ carLeft.height);
        }
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
