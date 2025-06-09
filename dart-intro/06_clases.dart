void main() {

  final pikachu = Pokemon(nombre: 'Pikachu', esLegendario: false);

  print(pikachu); // transforma el objeto a texto, pero sin indicar .toString()
  print('Nombre: ${pikachu.nombre}');
  print('Es legendario: ${pikachu.esLegendario}');

}

class Pokemon {
  String nombre;
  bool esLegendario;

  Pokemon({ required this.nombre, required this.esLegendario});

/*
  Pokemon( String nomPokemon, bool categoria ) 
      : nombre = nomPokemon, 
        esLegendario = categoria;
*/

  // Cambiamos el comportamiento del operador toString para que imprima un mensaje personalizado
  @override
  String toString() {
    return 'Este es un mensaje personalizado de la clase Pokemon: $nombre, esLegendario: $esLegendario';
  }
  
}