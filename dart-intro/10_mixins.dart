// Los mixins son una forma de reutilizar código en Dart, permitiendo que una clase herede métodos y propiedades de múltiples fuentes.
// Un animal extiende a ser mamífero, pájaro o pez.
// Un mamífero puede ser un delfí, murciélago o gato.
// Un delfín puede nadar, un vampiro puede volar o caminar y un gato puede caminar.

// El beneficio de los mixins es que sin importar la clase, puede implementar un mixin y obtener sus métodos y propiedades.

// Características comunes de un animal
abstract class Animal {}

// características específicas de un mamífero
abstract class Mamifero extends Animal {}
// características específicas de un pez
abstract class Ave extends Animal {}
// características específicas de un pez
abstract class Pez extends Animal {}

mixin Volador  {
  void volar() {
    print("Estoy volando");
  }
}

mixin Nadador {
  void nadar() {
    print("Estoy nadando");
  }
}

mixin Caminante {
  void caminar() {
    print("Estoy caminando");
  }
}

// mamíferos
class Delfin extends Mamifero with Nadador {
  void saludo() {
    print("Estoy haciendo sonar");
  }
}
class Murcielago extends Mamifero with Volador, Caminante {
  void saludo() {
    print("Estoy chillando");
  }
}
class Gato extends Mamifero with Caminante {
  void saludo() {
    print("Estoy maullando");
  }
}

// pájaros
class Paloma extends Ave with Volador, Caminante {
  void saludo() {
    print("Estoy gorjeando");
  }
}
class Pato extends Ave with Nadador, Caminante, Volador {
  void saludo() {
    print("Estoy graznando");
  }
}

// peces
class Tiburon extends Pez with Nadador {
  void saludo() {
    print("Estoy rugiendo");
  }
}
class PezVolador extends Pez with Volador, Nadador {
  void saludo() {
    print("Estoy silbando");
  }
}

void main(){
  final delfin = Delfin();
  delfin.nadar();

  final murcielago = Murcielago();
  murcielago.volar();
  murcielago.caminar();

  final pato = Pato();
  pato.nadar();
  pato.volar();
  pato.caminar();
}
