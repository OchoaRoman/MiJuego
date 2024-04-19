// Clase principal Juego
private Tripulante tripulante;
private Impostor impostor;
private Fondo miFondo;

void setup() {
  size(800, 600);
  miFondo = new Fondo("fondo.jpg");
  miFondo.redimensionar(width, height); // Redimensionar el fondo al tamaño de la ventana
  tripulante = new Tripulante(); 
  tripulante.setPosicion(new PVector(width/2, height/2));
  tripulante.setVelocidad(new PVector(10, 10));
  
  impostor = new Impostor(new PVector(width/2, 0), new PVector(0, 10));
}

void draw() {
  background(255);
  miFondo.dibujar();
  tripulante.dibujar();
  actualizarVelocidadTripulante();
  impostor.dibujar();
  impostor.mover();
}

void keyPressed() {
  if(key=='d'){
    tripulante.mover(1);
  }
  if(key=='a'){
    tripulante.mover(0);
  }
  
  if(key=='w'){
    tripulante.mover(2);
  }
  if(key=='s'){
    tripulante.mover(3);
  }
}

void actualizarVelocidadTripulante() {
  if(tripulante.getPosicion().x > (width/2)){
    tripulante.getVelocidad().x = 30;
  } else {
    tripulante.getVelocidad().x = 10;
  }
}
