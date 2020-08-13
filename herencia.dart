abstract class Fruta{

  String nombre;
  Fruta(this.nombre);

  double get gramos;

  bool get femenina;


  void come(){
    var det=(femenina ? 'una': 'un');
    print("Te acabas de comer $det $nombre ($gramos g.)");
  }

}

class Manzana extends Fruta{
  Manzana(): super("manzana");
  bool get femenina=> true;
  double get gramos=> 250;
}


class Melon extends Fruta{
  Melon(): super("Melon");
  bool get femenina=> false;
  double get gramos=> 1500;

  void come(){
    print("Vamos a pelar el melon");
    super.come();
  }
}

class Arandano extends Fruta{
  Arandano(): super("arandano");
  bool get femenina=> false;
  double get gramos=> 10;
}

abstract class Animal{
    String nombre;
    Animal(this.nombre);
  }

  void come_frutas(){
    var m= Manzana();

    var melon= Melon();

    var frutas=[

      for(int i=0; i < 7; i++) Arandano(), 
      for(int i=0; i < 7; i++) Melon(),
    for(int i=0; i < 5; i++) Manzana()
    
    ];
    frutas.shuffle();
    for(var f in frutas){
      f.come();
    }
  }

  //Mixins

  mixin PosicionMixin{
      num _x=0, _y=0;

      num get x => _x;
      num get y => _y;

      set x(num x) => _x=x;

      set y(num y) => _y=y;

      List<num> get pos=> [_x, _y];
      
      void mueve(int dx, int dy){
          _x += dx;
          _y +=dy;
      }

  }

  class Leon extends Animal with PosicionMixin{
    Leon(): super("leon");
  }

  void main(){
    var x= Leon();
    x.mueve(5, 3);
    x.mueve(2, 2);
    print(x.pos);
  }
  
