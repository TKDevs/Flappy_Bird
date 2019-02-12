
//Class Objekt

class Bird{
  float gravity;
  float velocity;
  float x_pos;
  float y_pos;
  float size; //Objektgröße
  boolean alive;

//constructor
  Bird(float size_){
    size = size_;
    x_pos = 100;
    y_pos = height/2-size;
    gravity = 0.4;
    reset();
  }

  
  //Anzeigen des Vogels
  void show() {
    fill(0);
    rect(x_pos,y_pos,size,size);
    if(alive == false) {y_pos = height - size;}
  }
  
  
  //Fallen
  void move(){
    if(alive == true){
      velocity += gravity;
      y_pos += velocity;
    }
  }
  
  
  //Springen
  void jump(){
    velocity = -8;
  }
  
  void reset() {
    velocity = 0;
    y_pos = height/2-size;
    alive = true;
  }
  
}
