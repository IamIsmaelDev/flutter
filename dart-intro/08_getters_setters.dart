void main() {

  // Crea un cuadrado con un lado de 10
  final miCuadrado = Cuadrado(lado: -10);

  // usa el getter para obtener el área del cuadrado
  print('El area del cuadrado es: ${miCuadrado.area}');

  // usa el setter para cambiar el valor del lado
  miCuadrado.lado = 20;

  // usa el método calcularArea para obtener el área del cuadrado
  print('El área del cuadrado es: ${miCuadrado.calcularArea()}');

  miCuadrado.lado = -5; // Esto lanzará una excepción ya que no se puede establecer un lado negativo

}

class Cuadrado {
  
  double _lado; // lado * lado = area

  // Constructor
  Cuadrado({ required double lado})
      : assert(lado >= 0, 'El lado no puede ser negativo'),
        _lado = lado;

  // Getter para obtener el área del cuadrado
  double get area => _lado * _lado; 

  // Setter para cambiar el valor del lado
  set lado(double valor){
    print('indica el nuevo valor del lado: $valor');
    if (valor < 0) throw 'El lado no puede ser negativo';
    _lado = valor;
  }

  double calcularArea() {
    return _lado * _lado;
  }

}