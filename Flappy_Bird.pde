Bird flappy;
Obstacle[] obstacles = new Obstacle[3];
int top = 110;

void setup() {
  size(1200, 600);
  flappy = new Bird(50);
  //------------------------------------------------------------------------------
  
  for (int i = 0;i < obstacles.length; i++){
    obstacles[i] = new Obstacle(width + i*420);
    println(obstacles[i].x_start);
  }
  //obstacles[0] = new Obstacle();
  //------------------------------------------------------------------------------
  smooth();
  frameRate(60);
}

void draw(){
  
  background(255);
  textSize(12);
  //------------------------------------------------------------------------------
  //mpf(Methoden per Frame) der Objekte
  flappy.show();
  flappy.move();
  
  for (Obstacle o:obstacles){
    o.move();
    o.show();
  }
  for (int i = 0;i < obstacles.length; i++){
    obstacles[i].x_start =width + i*400;
  }
  
  //Obstacles move / show
  //------------------------------------------------------------------------------
  //Todesursachen
  if(flappy.y_pos > height - flappy.size){  //Berührung Boden 
    flappy.alive = false;
  }
  
  if(flappy.y_pos < 0 - top){  //Prüfung des Anstiegsmaximum 
    flappy.y_pos = 0 - top;
  }

//Hitting Detection -- unfinsished
  for(Obstacle o: obstacles){
    if((flappy.y_pos - 25 < o.gap_y)||
    (flappy.y_pos + (flappy.size/2) > o.gap_y)){
      if((flappy.x_pos + (flappy.size/2) >o.x)&&
      (flappy.y_pos - (flappy.size/2) <o.x+o.kwidth)){
        text("GAME OVER", height/2, width/2);
        flappy.alive=false;
      }
    }
  }
  //Obstacles
  //------------------------------------------------------------------------------
 }
 
void keyPressed() {
  if ((key == ' ')||(keyCode == UP)){
    flappy.jump();
  }
  if(flappy.alive == false) {
    flappy.reset();
  }
}
