
PImage imagenoriginal;
void setup()
{
  size(800, 400);
  imagenoriginal = loadImage("ImagenOriginal.jpg");
  background(255);
 
}
void draw()
{
   image(imagenoriginal,0,0,400,400);
 
   //Cuadrado
   stroke(0);
     strokeWeight(1);
   fill(#a99fc4);
   rect(450,40,225,314);
   
   //ojos 1 
   stroke(0);
   strokeWeight(3);
   fill(#a99fc4);
   ellipse(530,170,70,90);
  
   
   strokeWeight(3);
   fill(#d17e72);
   ellipse(530,195,65,90);
 
 // ojo 2
 stroke(0);
   strokeWeight(3);
   fill(#a99fc4);
   ellipse(595,170,70,90);
  
   
   strokeWeight(3);
   fill(#d17e72);
   ellipse(595,195,65,90);
   
   //boca fondo
   strokeWeight(3);
   stroke(0);
   fill(0);
   triangle(520,270,598,273,568,296);
   
   //dientes
   fill(255);
   stroke(0);
   strokeWeight(0);
   rect(538,271,10,10);
   rect(550,271,10,10);
   rect(562,271,10,10);
   rect(574,271,10,10);
   
   //pupilas
   stroke(0);
   fill(0);
   strokeWeight(20);
   point(540,180);
   point(610,175);
   
   //lineas blancas
   strokeWeight(6);
   stroke(255);
   line(450,57,674,61);
   line(453,78,676,83);
   line(449,314,675,316);
   line(449,336,677,337);
   
   
   //cejas
   strokeWeight(2);
   stroke(0);
   line(483,144,517,110);
   line(624,114,656,140);
   
   
   //Pablo Sebastian Luzuriaga Villacres
   //TP1
   //Comision 3
   

}


// Coordenadas
 void mousePressed() {
   println("X: " + mouseX + ", Y: " + mouseY);
   }
   
