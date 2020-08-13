// eL IF es exacatament igual que en c+/Java/c#
//h 4, m:50, s:9 ---> "04:50:09"

String hhmmss({int h=0, int m=0, int s=0}){


  var buf = StringBuffer();
  wr(d){
    if(d<10) buf.write(0);
    buf.write(d);
  }
  
  wr(h);
  buf.write(':');
  wr(m);
  buf.write(':');
  wr(s);
  


  return buf.toString();
}

String dia2str_A(int dia){
  String sdia;

  if(dia == 1){
    sdia='lunes';

  }
  else if(dia==2){
    sdia='Martes';

  }
  else if(dia==3){
    sdia='Miercoles';
  }
  else if(dia==4){
    sdia="Jueves";
  }
  else if(dia==5){
    sdia="Viernes";
  }
  else if(dia ==6){  
    sdia="Sabado";
  }
  else if (dia==7){
    sdia="Domingo";
  }

  return sdia;

}

const dias_semana=['domingo', 'lunes','martes', 'miercoles', 'jueves', 'viernes','sabado','domingo'];

String dia2str_B(int dia){
  if(dia>=0 && dia< dias_semana.length)
    return dias_semana[dia];
  else{
      return null;
    }
}

//for 

bool es_primo(int n){
  for(int d=2; d*d<=n;d++){

    if(n % d == 0) return false;
  }

  return n>1;
}

List<int> lista_primos(int tamanyo){
  var primos =<int>[];
  int n=2;
  while(primos.length < tamanyo){
    if(es_primo(n)){
      primos.add(n);
    }
    n++;
  }

  print("ultimo ${n-1}");

  return primos;
}

muestra_lista_primos(int tam){


    for(var p in lista_primos(tam)){
      print(p);
    }
    /*
    for(int i=0; i<L.length; i++){
      print(p[i]);
    }
    */
}


List<List<int>> parejas_primos(int tam){
  var primos=lista_primos(tam);
  List<List<int>> parejas=[];

  for(int i=1; i < primos.length; i++){
    if(primos[i]- primos[i-1]==2){
      parejas.add([primos[i-1], primos[i]]);
    }

  }

  return parejas;
}


//switch

int str2dia_A(String sdia){
  int dia;
  switch(sdia){
    case 'lunes':
      dia=1;
      break;
    case 'martes':
      dia=2;
      break;
    case 'domingo':
      dia=7;
      break;  
    default:
     dia=-1;   
  }
  return dia;
}

  int str2dia_b(String dia) => dias_semana.indexOf(dia);

void main(){
    print(str2dia_A('martes'));
    print(str2dia_b('martes'));
}

