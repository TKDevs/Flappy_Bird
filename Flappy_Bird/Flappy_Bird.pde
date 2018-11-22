Bird Flappy;

void setup() {
  size(1200, 600);
  Flappy = new Bird();
  frameRate(60);
}

void draw(){
  background(255);
  textSize(12);
  text("height: " + height, 500, 500);
  text("height: " + width, 500, 520);
  Flappy.show();
  Flappy.move();
  Flappy.jump();
}
