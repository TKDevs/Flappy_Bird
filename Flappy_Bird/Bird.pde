
//Class object

class Bird{
  float gravity;
  float velocity;
  float xpos;
  float ypos;
  float bounce;

//constructor
  Bird(){
    gravity = 0.4;
    velocity = 10;
    xpos = 100;
    ypos = height/2-55;
    bounce = -1;
  }

  
  //just the bird appearing
  void show() {
    fill(0);
    rect(xpos,ypos,55,55);
  }
  
  
  //falling
  void move(){
    /*if(ypos < height-55){
      ypos = ypos  +10;
    }else{
      ypos = height -55;
    }*/
    velocity += gravity;
    ypos += velocity;
  }
  
  
  // on keypress jump i nthe air
  void jump(){
    if(ypos > height - 55){
    velocity *= bounce;
    }
  }
  
}
