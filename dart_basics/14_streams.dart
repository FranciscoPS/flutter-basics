void main() {
  // Podemos pensarlo como una subscripción ya que se encuentra en escucha del cambio
  // De igual manera podemos obtener el valor emitido por el Stream
  emitNumbers().listen((value) {
    print('Stream value: $value');
  });
}

// Los streams pueden ser retornados y usados como objetos, funciones o métodos.
// Son un flujo de información que puede estar emitiendo valores periódicamente, una única vez o nunca.

// Retornamos un Stream
Stream<int> emitNumbers() {
  // Construimos un Stream que emitira información cada segundo
  return Stream.periodic(const Duration(seconds: 1), (value) {
    print('desde periodic $value');
    return value;
  // Este take(5) solo va a tomar 5 emisiones de datos y cierra
  }).take(5);
}
