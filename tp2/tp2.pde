int px, py, px2, py2;
int si, no, vg, back, vince ;
int pro1, pro2, ps1, ps2, tecno1, tecno2, bs1, bs2; 
float verde = 255, blanco = 255; 
float a1, a2, b1, b2, f1;
PImage titulo, foto;
PFont fuente;
String dire, prota, sec, acto, acto2, musica, fin;
void setup () {
  size (404, 600);
  fuente = loadFont ("BB.vlw");
  titulo = loadImage ("BB Portada.jpg");
  foto = loadImage ("vince.jpg");
  py = 404;
  si = 1050;
  no = 1090;
  vg = 620;
  vince = 700;
  pro1 = 90;
  pro2 = 650;
  a1 = 460 ;
  a2 = 750;
  ps1 = 290;
  ps2 = 650;
  tecno1 = width/3;
  tecno2 = 750;
  bs1 = 500;
  bs2 = height/2;
  px2 = 50;
  py2 = 50;
  dire = "Creada y producida por \n Vince Gilligan";
  prota = "Protagonistas: \n Bryan Cranston \n Aaron Paul";
  sec = "Personajes secundarios:";
  acto = "Anna Gunn \n RJ Mitte \n Dean Norris \n Betsy Brandt";
  acto2 = "Giancarlo Esposito \n Bob Odenkirk \n Jonathan Banks \n Steven Quezada \n Jesse Plemons";
  musica = "Música original: \n Dave Porter \n Thomas Golubić";
  
  
}
void draw () {
  background (back, back, px);
  image (titulo, px, py);
  image (foto, vince, 300); 
  textAlign (CENTER, CENTER);
  textFont (fuente, 40);
  fill (blanco, verde, blanco);
  text ("Breaking", width/2, si);
  text ("Bad", width/2, no);
  fill (255);
  textSize (20);
  text (dire, width/2, vg);
  fill (0);
  text (prota, pro1, pro2);
  fill (255, 0, 0);
  text (sec, a1, a2);
  fill (200, 100, 50);
  text (acto, ps1, ps2);
  text (acto2, tecno1, tecno2);
  fill (f1);
  text (musica, bs1, bs2);
  py = py-2;
  si--;
  no--;
   
  verde = map (si, 600, 500, 0, 255);
  f1 = map (bs1, 404, 0, 0, 255);
  if (py<=0) {
    py = 0;
  } 
  if (py==0) {
   px = px+2; 
  }

  if (si<=300 || no<=320) {
  blanco = 0 & vg--; vince=100;
  }

 if (vg<0) {
  back = 255; vince = 700; pro2--; a1-- ; a2--;
 }
if (a1<=200) {
  ps2--; tecno2--;
}
  if ( tecno2 <= 0) {
    bs1--;
  }
 println (frameCount);
}
