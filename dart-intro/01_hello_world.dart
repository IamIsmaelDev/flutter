// ? main es la funcion principal de un programa Dart.
void main(){
  // ? final
  /* Indica que la variable no puede cambiar de valor */
  final saludo = 'Hola, Mundo!';

  // ? late
  /* late indica que la variable se inicializará más tarde */
  /* Sirve para cuando no sabes el valor de la variable al momento de declararla 
  pero sabes que tendrá un valor antes de ser utilizada. */
  late final miNombreCompleto;

  // ? const
  /* const indica que la variable es constante y no puede cambiar su valor 
  la diferencia con Final es que const se evalúa en tiempo de construcción de la aplicación,
  mientras que final se evalúa en tiempo de ejecución. */
  const miNombre = 'Ismael';
  
  mainVoid(saludo);
  print('Hola, Dart! Mi nombre es $miNombre');
  print('Hola, Dart! Mi nombre es ${miNombre.toUpperCase()}');

  miNombreCompleto = 'Ismael Abed';
  print('Hola, Dart! Mi nombre completo es $miNombreCompleto');
}

// ? Dynamic
/* Dynamic indica que la función puede devolver cualquier 
tipo de dato o no devolver nada. */
dynamic mainDynamic() {
  print('Hello, World!');
}

// ? Void
/* Void indica que la función no devuelve ningún valor. */
void mainVoid(String saludo) {
  print(saludo);
}