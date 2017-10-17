import shiffman.box2d.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;

int gamestate=1;
int gamescore=0;
int hihgscore;

  float c =1200;

  float a = random(500);
  float r1 = random(90,100);
  
  
  float b = random(300,400);
  float r2 = random(90,100);

PImage heart;
PImage p1;
PImage p2;
PImage p3;
PImage p4;
PImage rickventures;
PImage spaceship;
PImage space;

imagenes heartc;
imagenes p1c;
imagenes p2c;
imagenes p3c;
imagenes p4c;
imagenes rickventuresc;
imagenes spaceshipc;
imagenes spacec;

Box boxes;

Box2DProcessing box2d;
Asteroides asteroides1;
Asteroides asteroides2;

void setup(){
  size(1200,800);
  
  box2d = new Box2DProcessing(this);
  box2d.createWorld();

  box2d.setGravity(0, -100);

  boxes = new Box(width/2,height/2);
    spaceshipc = new imagenes(0,0);
}

void draw(){
  switch(gamestate){
    case 1:
                                                    //pantalla de inicio
    background (0);
      fill(255);
      textSize(32);
      textAlign(CENTER, CENTER);
      text("Presiona TAB para continuar",600,700);
      
      rickventuresc = new imagenes(600,300);
      rickventuresc.displayrickventures();
     break;
    case 2:
                                                    //Instrucciones
      background(0);
      instrucciones();
     break;
    case 3:
                                                    //Juego
      background(0);
      juego();
     break;
    case 4:
                                                    //GameOver
      background(0);
      finale();
     break;
  }
  
}

void keyPressed(){
 switch(gamestate){
  case 1:
      if(key==TAB){
         gamestate=2; 
      }
    break;
  case 2:
      if(key==TAB){
         gamestate=3; 
      }
    break;
 }
}

void instrucciones(){
        fill(255);
        textSize(50);
        textAlign(CENTER, CENTER);
        text("INSTRUCCIONES",600,150);
        textSize(25);
        text("MORTY!!!.... Prestame atencion Morty!!!",400,350);
        text("Recuerdas como manejar mi nave Morty???",400,380);
        text("El acelerador Morty... EL ACELERADOR(space)...",400,410);
        text("pero no lo dejes presionado Morty... solo tenemos un motor",400,440);
        text("ya que dañaste el otro alli abajo Bruuhh...",400,470);
        text("Asi que nunca lo dejes presionado Bruuhh...",400,500);
        text("Solo... Bruhh... intenta no chocar Morty!!!! ",400,530);
}

void juego(){
      spacec = new imagenes(0,0);
      spacec.displayspace();
      
      if(key==' '){
        box2d.step(); 
      }
      
      asteroides1 = new Asteroides(r1,c,a);
      asteroides2 = new Asteroides(r2,c,a+b);
      
      c=c-10;
      
      if(c<0){
        c=1200;
        a=random(500);
        b=random(300,400);
      }
      
      if (keyPressed) {
        if (key == ' '){
          Vec2 wind = new Vec2(0,1000);
          boxes.applyForce(wind);
        }
      }
      
      
      asteroides1.display();
      asteroides2.display();
      
      boxes.display();
 
       if (asteroides1.x==width/2){
         gamescore=gamescore+1;
       }
       
       
        
        if (boxes.y1 <= -50 || boxes.y1 >= 850 || ((boxes.x>c-r1+20) & (boxes.x<c+r1-20)) & ((boxes.y>a-r1+20) & (boxes.y<a+r1-20)) ){
          gamestate=4;
          hihgscore=gamescore;
        }
        if (boxes.y1 <= -50 || boxes.y1 >= 850 || ((boxes.x>c-r2+20) & (boxes.x<c+r2-20)) & ((boxes.y>a+b-r2+20) & (boxes.y<a+b+r2-20)) ){
          gamestate=4;
          hihgscore=gamescore;
        }
       
      fill(0);
      rect(100,400,200,800);
      rect(1100,400,200,800);
      
      fill(255);
        textSize(50);
        textAlign(CENTER, CENTER);
        text(gamescore,1100,400);
        text("SCORE",1100,340);
        
  
}

void finale(){
        fill(255);
        textSize(50);
        textAlign(CENTER, CENTER);
        text("Tu puntuacion fue",600,150);
        text(hihgscore,600,210);
        textSize(25);
        text("No puedo creer que nos mataras Morty...!!!",400,450);
        text("Eres un bruuuhhh.... inutil Morty...",400,480);
        
}