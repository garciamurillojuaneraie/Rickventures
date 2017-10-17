

class Asteroides {
       
  float r;
  float x,y;

  Asteroides(float r_, float x_, float y_) {
    x=x_;
    y=y_;
    r = r_;
  }
  
  void display() {
    
    pushMatrix();
    translate(x,y);
    fill(255);
    stroke(0);
    strokeWeight(1);
    ellipse(0,0,r*2,r*2);
    popMatrix();
  }

}