class Persona{
  String _nombre, _apellido;
  Persona(this._nombre, this._apellido);


  String get nombre  =>_nombre;
  String get apellido => _apellido;
  String get nombre_completo => ' $_nombre $_apellido';

  set nombre(String nombre) => _nombre=nombre;

  set apellido(String apellido)=>_apellido=apellido; 

  
  String toString()=> 'Persona( $_nombre $_apellido)';
}

void muestra_persona(Persona p){
  print(p._nombre);
  print(p._apellido);
}