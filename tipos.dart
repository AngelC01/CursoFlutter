
demoVarDynmaicnumber(){
//al poner var se infiere el tipo 


  //print("Demo Variables");
  //print("");
 // demoVariables();
  var a=7;

  var b; // en este casa var b es dynamic porque no se le asigna

  //Existe un tipo especial para cualquier cosa
  dynamic c;  
  b=5;
  b='a';
  c= "243434";
  c=0.05;

  print(a);
  print(b);
  print(c);

  num x = 7;
  num y = c;

  print(x);
  print(y);

}


demoVariables(){

//En dart todo son clases

  int n=3;
  double x=0.05;
  String s="hola";
  bool b=false;
  print(n);
  print(x);
  print(s);
  print(b);


  String s2='Hola2';
  String comillasimple="'";
  String comilla_doble='"';
  print(s2);
  print(comillasimple);
  print(comilla_doble);
  int a; //es  n
  print(a);

}

demoConversion(){
  int a=5;
  double b=3.141592;

  String sa=a.toString();
  String sb=b.toString();
  String sx= 546.toString();
  String sy='$a';
  print(sa);
  print(sb);
  print(sx);

  String sc='954';
  String sd='2.18';
  int c= int.parse(sc);
  double d=double.parse(sd);
  print(c);
  print(d);
}

interPolacionStrings(){
 //Interpolacion de strings

  double euros= 45.70;
  String mensaje="Tengo $euros euros";
  String mensaje2="Si tuviera 5 euros mas tendria ${euros+5}";
  print(mensaje);
  print(mensaje2);


}

textosLargos(){
//Literal de string seguido
 var texto='En un lugar de la mancha '
 'de cuyo nombre no quiero acordarme '
 'vivia un hidlago..';

 var s='James '+ 'Bond';

//comillas de string con salto de linea
 var texto2="""

  Un texto largo con varias lineas  
  Esta es la segunda
  Y esta es la tercera

 """;

 print(texto);

 print(texto2);

}

condicionesBooleanas(){
  //En el if solo puede ir bool o bien dymaic(que deberia contener ser bool)
  var a;
  if(a!=null){

    print("a no es null");
  }

  var s='';
  if(s.isEmpty){

    print("s esta vacio");
  }


}

demoListas(){
List<int> primos=[2,3,5,7,11,13];
  List<dynamic> cosas= [2,true, 'hola',[],null];
  var cosas2=[2,true,'Hola'];

  print(primos);
  print(cosas);

  var nums=[1,2,3];
  nums.add(4);

  print(nums);

  print(primos.length);
  print(cosas.length);
  print(nums.length);

  // Como determinar el tipo de u literal cuando no hay una variable
  var palabras=<String>[];
  palabras.add('que');

//Acceder a las casillas
  print(primos[1]);
  print(nums[nums.length-1]);
  print(cosas[2]);

}

collectionIFfor(){

  bool larga=false;

  var L=[
    1,
    2,
    3,
    if(larga) 4,
    5,
    

  ];

  int max=10;
  var M =[-1, 
  for(int i=0; i<max;i++)  i
  ,-1];
 // for(int i=0; i<max;i++){

    //  M.add(i+1);
  //}

  print(M);

}

demosets(){

   Set<int> primos ={2,3,5,7,11,13};
   Set<dynamic> cosas={null,2,'Hola',true,[1]};
   var numeros={1,2,3,4};
   var map_vacio={}; //esto es un map
   var conjunto_string_vacio= <String>{}; // Es to es un Set<String>

   print(primos);
   print(cosas);
   print(numeros);

   numeros.add(5);
   numeros.addAll({6,7,8,9});
   numeros.addAll([10,11,12,13]);

   if(numeros.contains(13)){
     print("Tiene 13");
   }

   print(numeros);
   print(numeros.length);

}

demoMaps(){

  var M={

    'nombre' : 'James',
    'apellido': 'Bond',
    'edad': 27
  };

  Map<int,String> numeros={

    1:'uno',
    2: 'dos',
    3: 'tres',
  };
   
  Map<dynamic,dynamic> cosas={

    2: 'dos',
    'dos':2,
    true: 'verdad',
    'falso':false,
  };

  print(M);

  print(numeros);
  print(numeros[3]);
  print(numeros[4]);
  numeros[5]='cinco';

  print(numeros[5]);
  print(cosas);
  print(cosas.length);
  print(numeros.length);
  cosas.addAll(numeros);
  print(cosas);

}

void main(){
  
}

