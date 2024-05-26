
// 96176251
// Pablo Sebastian Luzuriaga
// Comision 3

PImage img1, img2;
int paginaActual = 1; // Controla la página actual
float tiempoInicioPagina; // Tiempo en el que se muestra la página actual
boolean animando = false; // Controla si la animación está activa
float inicioAnimacion; // Tiempo en el que inicia la animación

void setup() {
  size(640, 480);
  img1 = loadImage("imagen1.jpg"); // Carga la primera imagen
  img2 = loadImage("imagen2.jpg"); // Carga la segunda imagen
  tiempoInicioPagina = millis();
}

void draw() {
  background(128, 0, 128); // Fondo morado 
  
  switch(paginaActual) {
    case 1:
      primeraPagina();
      break;
    case 2:
      segundaPagina();
      break;
    case 3:
      terceraPagina();
      break;
  }
}

void primeraPagina() {
  // Animación del texto 
  float y = min(height/2 - 70, map(millis() - tiempoInicioPagina, 0, 3000, -50, height/2 - 70));
  fill(255);
  textSize(32);
  textAlign(CENTER, CENTER);
  text("El guitarrista", width/2, y);
  
  // Botón 'Iniciar'
  fill(153, 50, 204);
  rectMode(CENTER);
  rect(width/2, height * 0.75, 200, 50);
  fill(255);
  text("Iniciar", width/2, height * 0.75);
}


void segundaPagina() {
  if (!animando) {
    inicioAnimacion = millis();
    animando = true;
    
    // Animaciones de las imágenes
  } else {
    float x = map(millis() - inicioAnimacion, 0, 5000, width, -max(img1.width, img2.width));
    image(img1, x, height/4);
   
    if (millis() - inicioAnimacion > 6000) {
      animando = false;
      tiempoInicioPagina = millis();
      paginaActual = 3;
    }
  }
  // Título de la segunda página
  fill(255);
  textSize(50);
  text("Obra", width/2, 50);
}

void terceraPagina() {
   // Animación del título 
  float xTitulo = min(width/2, map(millis() - tiempoInicioPagina, 0, 6000, -width, width/2));
  fill(255);
  textSize(32);
  text("Oswaldo Guayasamin", xTitulo, height/2);
  
  // Animación del subtítulo
  float xSubtitulo = xTitulo;
  textSize(24);
  text("Estilo: Expresionismo (1989)", xSubtitulo, height/2 + 30);
  
  // Botón 'Volver al Inicio'
  fill(153, 50, 204);
  rectMode(CENTER);
  rect(width/2, height * 0.85, 200, 50);
  fill(255);
  text("Inicio", width/2, height * 0.85);
}


 void mousePressed() {
  // Interacción con el botón en la primera página
  if (paginaActual == 1 && mouseX > width/2 - 100 && mouseX < width/2 + 100 &&
      mouseY > height * 0.75 - 25 && mouseY < height * 0.75 + 25) {
    paginaActual = 2; // Cambia a la segunda página
    tiempoInicioPagina = millis(); // Reinicia el contador de tiempo para la animación
    animando = false; // Asegura que la animación se reinicie
  }
  
  // Interacción con el botón en la tercera página
  else if (paginaActual == 3 && mouseX > width/2 - 100 && mouseX < width/2 + 100 &&
           mouseY > height * 0.85 - 25 && mouseY < height * 0.85 + 25) {
    paginaActual = 1; // Vuelve a la primera página
    tiempoInicioPagina = millis(); // Reinicia el contador de tiempo para la animación
    animando = false; // Asegura que la animación se reinicie
  }
} 
