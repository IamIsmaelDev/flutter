// Iterable es un tipo de dato en Dart que representa una 
// colección de elementos que se pueden recorrer 
// secuencialmente.

void main() {
  final numeros = [1, 2, 2, 2, 3, 4, 5];

  print('Listado original: $numeros');
  print('Elementos en el listado original: ${numeros.length}');
  print('Último elemento: ${numeros[3]}');
  print('Primer elemento: ${numeros.first}');
  
  // se va a convertir a un iterable, iterable es igual a { 1, 2, 3, 4, 5 }
  print('Primer elemento: ${numeros.reversed}');

  final reversedNumbers = numeros.reversed;
  print('Iterable: $reversedNumbers');
  print('Iterable a lista: ${reversedNumbers.toList()}');
  
  // elimina los duplicados
  print('Iterable a conjunto: ${reversedNumbers.toSet()}');

  // where permite filtrar los elementos.
  final numerosMayoresQueTres = numeros.where((numero) => numero > 3);
  // lo convierte en un iterable
  print('Números mayores que 3: $numerosMayoresQueTres');
  // convierte el iterable a una lista
  print('Números mayores que 3 a lista: ${numerosMayoresQueTres.toList()}');
}