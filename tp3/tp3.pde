PImage imagen;
int clickeado;
void setup() {
  clickeado=0;
  size(800, 400);
  imagen = loadImage("F_24.png");
}
void draw() {
  image(imagen, 0, 0,400,400);
  noStroke();
  for (int i = 0; i <=1; i++) {
    for (int j = 0; j <=1; j++) {
      for (int k = 5; k >=1; k--) {

        colorear(k);

        rect(i*200+20*(5-k)+400, j*200+20*(5-k), 20*k*2, 20*k*2);
      }
    }
  }
  for (int i = 5; i >=1; i--) {

    colorear(i);

    rect(500+(5-i)*20, 100+(5-i)*20, 40*i, 40*i);
  }
}

void colorear(int x){
    
  if (clickeado==0){
    if (x % 2 == 0) {
      fill(255);
    } else {
      fill(0);
    } 
  }
  if (clickeado==1){
    if (x % 2 == 0) {
      fill(0);
    } else {
      fill(255);
    } 
  }
  if (clickeado==2){
    if (x % 2 == 0) {
      fill(255,0,0);
    } else {
      fill(0,255,0);
    } 
  }
  if (clickeado==3){
    if (x % 2 == 0) {
      fill(255,255,0);
    } else {
      fill(255,0,255);
    } 
  }
  if (clickeado==4){
    if (x % 2 == 0) {
      fill(random(255),random(255),0);
    } else {
      fill(0,0,random(255));
    } 
  }
}

void mousePressed(){
 clickeado = sumarclick(clickeado); 
}

int sumarclick(int x){
  if (x == 4) {
    x=0;
  } else {
    x++;
  }
  return x;
}
