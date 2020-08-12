// eL IF es exacatament igual que en c+/Java/c#
//h 4, m:50, s:9 ---> "04:50:09"

String hhmmss(int h, int m, int s){


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

void main(){

  print(hhmmss(4, 50, 9));
}