/*
Nombre: Lautaro Gutiérrez
Legajo: 88168/2
lic. Diseño Multimedia
Profesor: José Luis Bugiolachi
video: https://youtu.be/tQuED_sSFqE
*/

int cant =20;
int ubic;
void setup () {
  size (500, 500);
  ubic = width/cant;

}

void draw () {
  background (120, 40, 140);
  for (int i=0; i<cant; i++) {
    for (int c=0; c<cant; c++) {
      float distan = dist (mouseX, mouseY, i*ubic+ubic/2, c*ubic+ubic/2);
      float tam = map(distan, 0, dist(0,0,width,height), 60, 150);
      float tono = map (c, 0, cant-1, 50, 255);
      float rojo = random (120, 255);
      if ((i+c)%2==0) {
       fill (rojo, 233, 0, tono); 
      } else {
        fill (rojo, 40, 140, tono);
      }
     
      ellipse (i*ubic+ubic/2, c*ubic+ubic/2, tam, tam);
    }
    
  }
}
