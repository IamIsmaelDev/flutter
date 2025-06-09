void main () {

  // Simula un JSON que se recibe de una API
  final Map<String, dynamic> rawJson = {
    'nombre': 'Superman',
    'poder': 'Super fuerza',
    'esVillano': false
  };
  
  // Crea un objeto Heroe a partir del JSON
  final heroe = Heroe.fromJson(rawJson);
  print(heroe); // Imprime el objeto usando el método toString
}

// Puedes tener multiples constructores con diferentes nombres

class Heroe {
  String nombre;
  String poder;
  bool esVillano;

  // Constructor por defecto
  Heroe({
    required this.nombre,
    required this.poder,
    required this.esVillano
  });

  // Constructor que trata los valores que vienen de un JSON
  Heroe.fromJson(Map<String, dynamic> json)
      : nombre = json['nombre'] ?? 'Sin nombre',
        poder = json['poder'] ?? 'Sin poder',
        esVillano = json['esVillano'] ?? ' No se ha especificado';

  @override
  String toString() {
    return 'nombre: $nombre, poder: $poder, esVillano: ${esVillano ? 'Sí' : 'No'}';
  }

}