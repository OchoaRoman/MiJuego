// Clase Fondo
class Fondo {
  PImage imagen;
  
  Fondo(String nombreImagen) {
    imagen = loadImage(nombreImagen);
  }
  
  void redimensionar(int ancho, int alto) {
    imagen.resize(ancho, alto);
  }
  
  void dibujar() {
    imageMode(CORNER); // Establecer el modo de dibujo a la esquina superior izquierda
    image(imagen, 0, 0); // Dibujar la imagen sin redimensionar
  }
}
