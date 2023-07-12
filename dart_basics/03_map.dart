void main() {
  //final map, esto es lo más común a menos que sepan estrictamente el tipo de datos del objeto
  //Map<NOMBRE_DE_LA_LLAVE, TIPO_DE_DATO>, en este caso dynamic porque no siempre es string y puede tener diferentes tipos
  final Map<String, dynamic> pokemon = {
    'name': 'Ditto',
    'hp': 100,
    'isAlive': true,
    'abilities': <String>['impostor'],
    'sprites': {
      1: 'ditto/front.png',
      2: 'ditto/back.png'
    }
  };

  //Los objetos pueden ser cualquier cosa
  final pokemon2 = {'name': 'Ditto', 'hp': 100};

  //Aunque no obligatoriamente la llave debe ser string
  final Map<int, String> pokemon3 = {1: 'ABC', 2: 'XYC'};

  print(pokemon);
  print(pokemon2);
  print(pokemon3);

  //Si quiero tomar los nombres solamente o algún dato específico sería así:
  print('Name: ${pokemon['name']}');
  print('Sprites: ${pokemon['sprites']}');

  print('Back: ${pokemon['sprites'][2]}');
  print('Front: ${pokemon['sprites'][1]}');
}
