void main() {

  final miCoche = Coche(marcaCoche: 'Toyota');
  final miBarco = Barco(marca: 'Yamaha');


  print( 'coche: ${repostarCombustible(miCoche, 50)}');
  print( 'barco: ${repostarCombustible(miBarco, 30)}');
  
}

int repostarCombustible(Vehiculo vehiculo, int cantidad) {
  if (cantidad < 0) {
    throw 'La cantidad de combustible a repostar no puede ser negativa';
  }
  vehiculo.combustible += cantidad;
  return vehiculo.combustible;
}

enum TipoVehiculo {terrestre,acuatico,aereo,espacial}

// Una clase abstracta es un molde que sirve para crear otros moldes.
// moldes para pan, galletas, pasteles, etc.
abstract class Vehiculo {
  // Atributos comunes a todos los vehículos
  String marca;
  final TipoVehiculo tipo;
  int combustible;

  // Constructor de la clase abstracta
  Vehiculo({ required this.marca, required this.tipo, this.combustible = 100 });

  // métodos genéricos
  void consumeCombustible(int cantidad);

}


// Hereda los atributos y métodos de la clase Vehiculo
class Coche extends Vehiculo {

  // Constructor de la clase Coche
  Coche({ required String marcaCoche})
      : super(
          marca: marcaCoche,
          tipo: TipoVehiculo.terrestre,
          combustible: 100
      );

  // Sobrescribe el método conducir para personalizarlo
  @override
  void consumeCombustible(int cantidad) {
    combustible -= cantidad;
  }

  @override
  String toString() {
    return 'Mi coche es de la marca: $marca, Un coche es del tipo: $tipo, Tiene $combustible de combustible restante.';
  }

}
// La diferencia entre extends e implements es que extends hereda los atributos y métodos de la clase padre,
// mientras que implements obliga a la clase a implementar todos los métodos de la interfaz.
class Barco implements Vehiculo {

  @override
  String marca = 'Barco genérico';

  @override
  final TipoVehiculo tipo = TipoVehiculo.acuatico;

  @override
  int combustible = 100;

  // Constructor de la clase Barco, solicita la marca del barco para crear un objeto Barco.
  Barco({required this.marca});

  // Implementa el método consumeCombustible de la interfaz Vehiculo
  @override
  void consumeCombustible(int cantidad) {
    combustible -= cantidad;
  }

  @override
  String toString() {
    return 'Mi barco es de la marca: $marca, Un barco es del tipo: $tipo, Tiene $combustible de combustible restante.';
  }
}