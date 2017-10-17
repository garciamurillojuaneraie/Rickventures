class imagenes {
  float x,y;
  
  imagenes(float x_, float y_){
   x=x_;
   y=y_;
    
  }
  
  void displayheart (){
    
  }
  
  void displayp1 (){
    
  }
  
  void displayp2 (){
    
  }
  
  void displayp3 (){
    
  }
  
  void displayp4 (){
    
  }
  
  void displayrickventures (){
    rickventures = loadImage("RICKVENTURES.png");
    translate(x,y);
    pushMatrix();
        scale(.20);
        imageMode(CENTER);
        image(rickventures,0,0);
    popMatrix();
  }
  
  void displayspaceship (){
    spaceship = loadImage("Spaceship.png");
    translate(x,y);
    pushMatrix();
        scale(.02);
        imageMode(CENTER);
        image(spaceship,0,0);
    popMatrix();
    
  }
  
  void displayspace (){
    space = loadImage("0000.png");
    translate(x,y);
    pushMatrix();
        image(space,600,400);
    popMatrix();
  }
  
  
}