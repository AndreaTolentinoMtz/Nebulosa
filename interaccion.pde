void keyPressed(){
switch (pantalla){
    case 0:
    if (key == ENTER || key == ENTER){
      pantalla=1;
    }
    break;
    
    
    case 1:
    if (key == ENTER || key == ENTER){
      pantalla=2;
    }
    break;
    
    case 2:
    if (key == ENTER || key == ENTER){
      pantalla=0;
    }
    break;
}
}
