void titulo(){
  background(0);
  fill(200,150,255,90);
  font = loadFont("THECUREPersonamUse-Regular-150.vlw");
  textFont(font,150);
  text("NEBULOSA",200,250);
  fill(255);
  font = loadFont("ArialNarrow-Italic-30.vlw");
  textFont(font,25);
  text("Presiona ENTER",370,500);  
}


void explicacion(){
  background(0);
  fill(255);
  font=loadFont("ArialNarrow-Italic-30.vlw");
  textFont(font,25);
  text("Cuando ocurre una supernova, sus partículas residuales junto con gases y polvo estelar se combinan y forman una nebulosa. Las nebulosas por si solas son oscuras pero cuando hay estrellas cerca de ellas dan luz y calor a la nebulosa." ,50,50,850,200);  
  text("Presiona ENTER",370,500);  
}


void nebulosa(){
  background(0);
  fill(255);
  font=loadFont("ArialNarrow-Italic-30.vlw");
  textFont(font,30);
  text("Mueve el mouse para juntar las partículas y formar una nebulosa",100,560);  
  box2d.step();
  if (random(1) < 0.1){
    Particle x = new Particle(random(width),random(height));
    particles.add(x);
  }
  
  if (random(1) < 0.1){
    Particle2 x = new Particle2(random(width),random(height));
    particles2.add(x);
  }
  
  for (Particle b: particles){
    b.display();
  }
  
  for (Particle2 b: particles2){
    b.display();
  }
  
  for (int i = particles.size()-1; i>=0; i--){
    Particle b = particles.get(i);
    if (b.done()){
      particles.remove(i);
    }
  }
  
  for (int i = particles2.size()-1; i>=0; i--){
    Particle2 b = particles2.get(i);
    if (b.done()){
      particles2.remove(i);
    }
  }
}
