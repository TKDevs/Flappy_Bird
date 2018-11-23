Bird flappy;
int top = 110;

void setup() {
  size(1200, 600);
  flappy = new Bird(55);
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
  //Obstacles move / show
  //------------------------------------------------------------------------------
  //Todesursachen
  if(flappy.y_pos > height - flappy.size){  //Berührung Boden 
    flappy.alive = false;
  }
  
  if(flappy.y_pos < 0 - top){  //Prüfung des Anstiegsmaximum 
    flappy.y_pos = 0 - top;
  }
  //Obstacles
  //------------------------------------------------------------------------------
}

void keyPressed() {
  flappy.jump();
  if(flappy.alive == false) {
    flappy.reset();
  }
}
