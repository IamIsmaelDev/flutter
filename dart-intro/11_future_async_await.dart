// un future representa una promesa de que un valor estará disponible en el futuro.
// hay que tener en cuenta que un future puede completarse con éxito o con error, por ello se debe manejar ambos casos.

void main() async{

  print('Inicio del programa');

  try {
    // Llamada a una función que devuelve un Future.
    final value = await httpGet('https://www.google.com');
    print(value);
  } catch (error) {
    // Manejo de errores si la petición falla.
    print('Tenemos el error: $error');
  }

  print('Fin del programa');

}

// Async indica que una función va a devolver un Future.
// Solo se puede usar await dentro de una función async. 
// Await indica a dart que espere al resultado.
Future<String> httpGet (String url) async {

  // espera 2 segundos para simular una petición http.
  await Future.delayed(Duration(seconds: 2));
  
  // devuelve el valor de la petición.
  return 'Hay un valor de retorno de la petición a $url';
  //throw 'Error en la petición';

}