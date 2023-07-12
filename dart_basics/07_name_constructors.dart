void main() {
  // De esta forma es sin tiparlo
  final ironman = Hero(name: 'Tony Stark', power: 'Money', isAlive: false);

  // Aqui estamos simulando lo que pasaría en caso de recibieramos un objeto de backend
  // Que basicamente podría tener muchas formas de llegar pero escogemos que reciba string en key y el value sea dinámico
  final Map<String, dynamic> rawJson = {
    'name': 'Spider-man',
    'power': 'Spider',
    'isAlive': true
  };

  // La siguiente sería una forma no óptima de usar los valores obtenidos de la respuesta de BED
  // El inconveniente de esto es que tenemos que verificar que no exista valor nulo y se rompa
  // La solución sería utilizar un constructor del objeto personalizado que valide todo eso
  // final objectFromRawJson = Hero(
  //     name: rawJson['name'] ?? false,
  //     power: rawJson['power'],
  //     isAlive: rawJson['isAlive']);

  // Dado lo anterior, lo siguiente sería un Constructor personalizado donde solo mandamos el objeto
  final spiderman = Hero.customJson(rawJson);

  print(ironman.toString());
  print(spiderman.toString());
}

class Hero {
  String name;
  String power;
  bool isAlive;

  // Constructor convencional
  Hero({required this.name, required this.power, required this.isAlive});

  // Constructor personalizado por nombre
  Hero.customJson(Map<String, dynamic> customJson)
      // En este caso es más facil usar el constructor sencillo
      : name = customJson['name'] ?? 'No name found',
        power = customJson['power'] ?? 'No power found',
        isAlive = customJson['isAlive'] ?? 'No isAlive found';

  @override
  String toString() {
    return '$name, $power, isAlive: ${isAlive ? 'YES!' : 'Nope'}';
  }
}
