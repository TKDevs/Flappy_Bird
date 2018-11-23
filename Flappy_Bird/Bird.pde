
//Class Objekt

class Bird{
  float gravity;
  float velocity;
  float x_pos;
  float y_pos;
  float bounce;

//constructor
  Bird(){
    gravity = 0.4;
    velocity = 10;
    x_pos = 100;
    y_pos = height/2-55;
    bounce = -1;
  }

  
  //Anzeigen des Vogels
  void show() {
    fill(0);
    rect(x_pos,y_pos,55,55);
  }
  
  
  //Fallen
  void move(){
    /*if(ypos < height-55){
      ypos = ypos  +10;
    }else{
      ypos = height -55;
    }*/
    velocity += gravity;
    y_pos += velocity;
  }
  
  
  //Springen
  void jump(){
    if(y_pos > height - 55){
    velocity *= bounce;
    }
  }
  
}
