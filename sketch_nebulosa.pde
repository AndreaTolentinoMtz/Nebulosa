/*
Cuando ocurre una supernova, sus partículas residuales junto con gases y polvo estelar
se combinan y forman una nebulosa. Las nebulosas por si solas son oscuras pero 
cuando hay estrellas cerca de ellas dan luz y calor a la nebulosa.

1. ------------ FONDO ------------
Muchas partículas grises diminutas con halo semi transparente de colores oscuros 
(residuos) y pocas partículas blancas grandes con halo semi transparente de color 
blanco (estrellas) que se crean y se disuelven aleatoria y lentamente. 
Al momento de juntarse se combinan los colores.

2. ------------ MOUSE Y SINOIDAL ------------
Aparecerá una sinoidal de partículas al principio y al mover el mouse dentro de la
sinoidal se juntan las otras partículas del fondo

3. ------------ SUPERNOVA ------------
al hacer click "una estrella explota": En un punto aleatorio se crea un cúmulo de
muchas partículas grises que se expanden

*/


import shiffman.box2d.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;

Box2DProcessing box2d;

PFont font;
int pantalla = 0;
ArrayList<Particle> particles;
ArrayList<Particle2> particles2;
//ArrayList<Supernova> supernovas;

void setup(){
  size(900,600);
  box2d = new Box2DProcessing(this);
  box2d.createWorld();
  box2d.setGravity(0, -.5);
  
  particles = new ArrayList<Particle>();
  particles2 = new ArrayList<Particle2>();
  //supernovas = new ArrayList<Supernova>();
}

void mouseMoved(){
  for (Particle b: particles) {
     b.attract(mouseX,mouseY);
    }
    for (Particle2 b: particles2) {
     b.attract(mouseX,mouseY);
    }
}

void draw(){
  switch (pantalla){
    case 0:
    titulo();
    break;

    case 1:
    explicacion();
    break;
    
    case 2:
    nebulosa();
    break;
   
  }
  
  
    /*for (Supernova t: supernovas){
    t.display();
  }*/
  
}
