// Variables en Dart
void main(){
  final String pokemon = 'Pikachu';
  final int hp = 100;
  final bool esLegendario = false;
  final List<String> habilidades = ['Impactrueno', 'Ataque rápido', 'Rayo', 'Cola férrea'];
  final sprites = <String>['pikachu/front.png', 'pikachu/back.png'];

// dynamic por defecto es nulo
// Cualquier valor es asignable a dynamic
  dynamic mensajeError = 'Error: Pokémon no encontrado';
  mensajeError = true;
  mensajeError = 404;
  mensajeError = ['Error', '404', 'Not Found'];
  mensajeError = {'error': 'Pokémon no encontrado'};
  mensajeError = () => print('Función de error');
  mensajeError = null;
  
  print("""
  Pokemon: $pokemon
  HP: $hp
  Es legendario: $esLegendario
  Habilidades: $habilidades
  Sprites: $sprites
  """);
  print('Mensaje de error: $mensajeError');
}