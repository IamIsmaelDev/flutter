// Esto es un mapa (diccionario) en Dart. Clave/Valor
void main() {
  final Map<String,dynamic> pokemonMap = {
    'nombre': 'Pikachu',
    'hp': 100,
    'esLegendario': false,
    'habilidades': ['Impactrueno', 'Ataque rápido', 'Rayo', 'Cola férrea'],
    'sprites': {
      1: 'pikachu/front.png',
      2: 'pikachu/back.png',
    },

  };
  final evolucionesMap = {
    1: 'Bulbasaur',
    2: 'Ivysaur',
    "ultimaEvo": 'Venusaur',
  };

  print('Nombre: ${pokemonMap['nombre']}'
      '\nHP: ${pokemonMap['hp']}'
      '\nEs legendario: ${pokemonMap['esLegendario']}'
      '\nHabilidades: ${pokemonMap['habilidades']}'
      '\nSprites: ${pokemonMap['sprites']}'
      '\nSprite Frontal: ${pokemonMap['sprites'][1]}'
      '\nSprite Trasero: ${pokemonMap['sprites'][2]}'
      '\nEvoluciones: $evolucionesMap'
  );
}