import 'persona.dart';

class Hora{
  int h=0, m=0, s=0;
}


class Reloj{
  int hora, minuto, segundo;

 /* Reloj(int hora, int minuto, int segundo){
    this.hora=hora;
    this.minuto=minuto;
    this.segundo=segundo;
  }*/
  Reloj(this.hora, this.minuto, this.segundo);
  Reloj.nombrado({this.hora, this.minuto, this.segundo});
  Reloj.a_cero(){
    this.hora=0;
    this.minuto=0;
    this.segundo=0;
  }

}


class Punto2D{

  double x, y;

  Punto2D(this.x, this.y);
  Punto2D.cero() : x= 0, y=0;

  Punto2D.fromJson(Map<String,dynamic> json)
  : x=json['x'], y=json['y'];

  String toString() => '($x,$y)';
}

class Rect{
  num left, top, width, height;
  Rect(this.left, this.top, this.width, this.height);
  num get right=> left+ width;
  num get bottom=> top+height;
  
  void set right(num right)=> left= right- width;
  void set bottom(num bottom)=>   top= bottom-height;
   
   String toString()=> 'Rect($left,$top, $width, $height)';
}

class Color{
  int r, g,b;
  Color(this.r, this.g, this.b);
  String toString() => 'Color ($r,$g, $b)';

  static final  Color rojo = Color(255,0,0);
  static final Color negro= Color(0,0,0);

  static  Color mezcla(Color a, Color b)=> Color(a.r+b.r,a.g+b.g, a.b +b.b );


}
/*class Persona{
  String nombre, apellido;
  Persona(this.nombre, this.apellido);

  String nombre_completo()
    => ' $nombre $apellido';
  
  String toString()=> 'Persona( $nombre $apellido)';
} */

void main(){
  print(Color.rojo);
  print(Color.mezcla(Color.rojo, Color.negro));
}

void main3(){

  var p= Persona('Pedro', 'Garcia');
  p.nombre='Hola';
  print(p.nombre);
  print(p.nombre_completo);
  var list=[];  
  var r= Rect(0,0,50,100);
  r.right=250;
  print(r);
  
  
}

void main2(){

  var a= Hora();
  a.h=16;
  a.m=36;
  a.s=45;
  print('${a.h}:${a.m}:${a.s}');


  var b= Reloj.nombrado(minuto:12,hora: 12,segundo:24);
  print('${b.hora}:${b.hora}:${b.segundo}');
  var z= Reloj.a_cero();
  print('${z.hora}:${z.hora}:${z.segundo}');

  var p1= Punto2D.cero();
  print(p1);

  var p2= Punto2D.fromJson({'x':0.5, 'y':7.1, 'bla': true});
  print(p2);


}