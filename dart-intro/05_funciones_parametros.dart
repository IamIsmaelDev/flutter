void main(){
  print(saludoGlobal());
  print(suma(5, 10));
  print(sumaConParametrosPosicionales(5));
  print(saludaPersona(nombre: 'Ismael', mensaje: 'Hola'));
  print(saludaPersona(nombre: 'Ismael'));
}

String saludoGlobal() => 'Hola a todos!';

int suma(int a, int b) => a + b;

// 'b' es un parámetro opcional, si es nulo, se considera como 0
int sumaConParametrosPosicionales(int a, [int b = 0]) => a + b;

// para que los parametros no sean posicionales, se les debe indicar el nombre.
String saludaPersona({required String? nombre, String mensaje = 'Hey'}) => '$mensaje $nombre!';