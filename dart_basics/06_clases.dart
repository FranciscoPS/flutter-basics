void main() {
  // De la siguiente forma instanciamos un objeto
  // NOTA: Podemos o no usar el new
  // Esto sería si el constructor obtiene valores por posicionamiento
  // final Hero wolverine = new Hero('Logan', 'Regeneración');
  // Y este sería si el constructor obtiene valores por nombre, osea colocando los {} dentro de los parametros
  final Hero wolverine = Hero(name: 'Logan', power: 'Regeneración');

  print(wolverine.toString());
  print('Nombre de heroe: ${wolverine.name}');
  print('Nombre de heroe: ${wolverine.printName()}');
}

class Hero {
  String name;
  String power;

  // NOTA: Podemos o no usar el this.
  // this.name = pName;
  // this.power = pPower;

  // Para construir un constructor con Dart podemos hacerlo de diferentes maneras:

  // Manera 1:
  // Hero(String pName, String pPower)
  //    : name = pName,
  //      power = pPower;

  // Manera 2 (Asignación por posicionamiento):
  // Hero( this.name, this.power );

  // Manera 3 (Asignación por nombre):
  Hero({required this.name, this.power = 'Sin poder'});

  // Podemos sobrescribir los métodos
  @override
  String toString() {
    return '$name: $power';
  }

  // Aqui no necesitamos usar el this, usualmente solo se va a utilizar en el constructor,
  // fuera de este se usa normal sin .this
  String printName() {
    return '${name}';
  }
}
