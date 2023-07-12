void main() {
  print('Inicio del programa');

  // Simulemos que tuvieramos una petición http
  // Como la función es Future o una Promesa, podemos usar .then o el .catchError
  httpGet('https://fernando-herrera.com/cursos').then((value) {
    print(value);
  }).catchError((err) {
    print('Error: $err');
  });

  print('Fin del programa');
}

// Es basicamente una promesa, es decir; debe retornar un valor o en su defecto regresar un fallo
Future<String> httpGet(String url) {
  // Podemos utilizar un callback cuando la duración se cumpla
  // Aque establecemos con el delayed que la petición va a esperar un segundo y luego retornará lo que queramos
  return Future.delayed(const Duration(seconds: 1), () {
    // Podemos tirar un error
    throw 'Error en la petición http';

    // O podemos tirar un return exitoso
    return 'Respuesta de la petición http';
  });
}
