


int max3(int a, int b, int c){
  int r=a;
  if(b>r) r=b;
  if(c>r) r=c;
  return r;
}

f(){

  print("No hago nada beno");
}
// Paramateros posicionales
String transforma_A(String s, bool mayusc, int exclama){

  if(mayusc){
    s=s.toUpperCase();

  }
  // CUANDO pongo +=  y uso una multiplicacion el string se repite tanta veces indeique el itn
  s+="!" * exclama;
  return s;
}


// Los parametros entre corchetes son opcionales
String trasnforma_B(String s, [bool mayusc, int exclama]){
   if( mayusc!=null &&   mayusc){
    s=s.toUpperCase();

  }
  if(exclama!=null){
  // CUANDO pongo +=  y uso una multiplicacion el string se repite tanta veces indeique el itn
    s+="!" * exclama;
  }
  return s;
}

// Los parametros entre corchetes son opcionales y puden tener valores por defecto
String trasnforma_C(String s, [bool mayusc=true, int exclama=0]){
   if( mayusc){
    s=s.toUpperCase();

  }
  // CUANDO pongo +=  y uso una multiplicacion el string se repite tanta veces indeique el itn
    s+="!" * exclama;
  
  return s;
}

//Parametros nombreados(con {})
String trasnforma_D(String s, {bool mayusc, int exclama}){
  if( mayusc!=null &&   mayusc){
    s=s.toUpperCase();

  }
  if(exclama!=null){
  // CUANDO pongo +=  y uso una multiplicacion el string se repite tanta veces indeique el itn
    s+="!" * exclama;
  }
  return s;
}


String trasnforma_E(String s, {bool mayusc=false, int exclama=0}){
  if(   mayusc){
    s=s.toUpperCase();

  }
  
  // CUANDO pongo +=  y uso una multiplicacion el string se repite tanta veces indeique el itn
    s+="!" * exclama;
  
  return s;
}


//Las funciones son valores //////

void muestra_lista(List<dynamic> lista){
  lista.forEach(print);

}

var muestra_list_copia=muestra_lista;

//Funciones anonimas

var dup = (double x ) { return 2.0 * x;};

void muestra_lista_B(List<dynamic> lista){
  lista.forEach((element) {

    print("${lista.indexOf(element)} -> $element");

   });
}


// Funciones flecha(arrow functions)

var triple_A = (num X) {return 3 *X;};
var triple_B= (num x) => 3*x;

void muestra_lista_C(List lista) => 
lista.forEach((element)=> 
print("[$element]"));


void muestra_lista_D(List lista){

  int i=0;
  void muestra_elemnto(elem){

     print("${i++} -> $elem" );
  }

    lista.forEach(muestra_elemnto);
  

}

// Closures (Clausuras)

//1. Las funciones son valores por ende se pueden devolver como resultados de otra funcion
//2. SI eSTAN anidads tienen acceso al entorno de la funcion que las contiene

nuevoSumador(double dx){
  return (double X) => X + dx;
}

void main(){

  muestra_lista_D([null, 'hola',345,'hola3']);

  var suma5= nuevoSumador(5);
  var suma10= nuevoSumador(10);
  var suma1007= nuevoSumador(1007);

  print(suma5(-5.0));
  print(suma10(10.0));
  print(suma1007(2000.0));




}