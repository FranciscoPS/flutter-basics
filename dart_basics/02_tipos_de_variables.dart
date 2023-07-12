void main() {
  final String pokemon = 'Ditto';
  final int hp = 100;
  final bool isAlive = true;

  //Nullsafety permite asignar valores nulos
  //bool? isAlive = true;
  bool? canBeNull;

  //Si ponemos habilidades, DART infiere el tipo de dato
  final abilities = ['impostor'];
  //O podemos asignarlo de las siguientes maneras
  final abilities2 = <String>['impostor'];
  final List<String> abilities3 = ['impostor'];

  final sprites = <String>['ditto/front.png', 'ditto/back.png'];

  //dynamic == null
  //dynamic SIEMPRE VA A SER DYNAMIC, es decir cualquier tipo de dato puede ser asignado
  dynamic errorMessage = 'Hola'; 
  errorMessage = true;
  errorMessage = { 1, 2, 3, 4, 5 };
  errorMessage = () => true;
  errorMessage = null;

  print(pokemon);

  //Colocando 3 """ en el print indicamos que es una impresion multilinea
  print("""
  $pokemon
  $hp
  $isAlive
  $abilities
  $abilities2
  $abilities3
  $sprites
  $errorMessage
  $canBeNull
  """);
}
