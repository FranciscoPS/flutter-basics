void main() {
  // Ya que es un stream, creamos el observador
  emitNumber().listen((int value) {
    print('Stream value: $value');
  });
}

// Simplemente al agregar un * en el async, vamos a retornar un STREAM
// De esta forma nos evitamos hacer el return del Stream, es decir es otra forma de hacer este código

//  return Stream.periodic(const Duration(seconds: 1), (value) {
//    print('desde periodic $value');
//    return value;
//  }).take(5);

Stream<int> emitNumber() async* {
  final valuesToEmit = [1, 2, 3, 4, 5];

  for (int i in valuesToEmit) {
    // Como sabemos, aqui el código esperará a que se complete el Future
    await Future.delayed(const Duration(seconds: 1));
    // Cuando se cumpla el segundo, emitiremos un valor con yield
    // En lugar de poner un return, usamos un yield para retornar el valor el cual esta definido por el Stream<int>
    // con el cual definimos la función
    yield i;
  }
}
