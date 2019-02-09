//Variablenwerte die mit some_value gekennzeichnet werden müssen noch genauer bestimmt werden

class Obstacle {
  float ky_top; //Y Wert für Höhe über dem Bildschirm 
  float kwidth;  //some_value
  float kgap_size;  //some_value
  float kspeed;  //some_value

  float gap_y;  //some_value
  float gap_length;
  float x;  //some_value

  Obstacle() {
    ky_top = 110;
    kwidth = 60;
    kgap_size = 200;
    kspeed = 4;
    changeObstacle();
  }
  //------------------------------------------------------------------------------

  void move() {
    x -= kspeed;
  }

  void show() {
    fill(0);
    rect(x, 0 - ky_top, kwidth, gap_length);  //oberes Rechteck
    rect(x, gap_y + kgap_size, kwidth, height);  //unteres Rechteck
  }
  //------------------------------------------------------------------------------
  void changeObstacle() {
    gap_y = 120;
    gap_length = gap_y + ky_top;
    x = width;
  }
}
