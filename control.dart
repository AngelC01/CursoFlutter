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

void main(){

  print(hhmmss(h: 4,m: 50));
  print(dia2str_A(3));
  print(dia2str_A(5));
}