void main() async {
  print('Inicio del programa');

  try {
    final value = await httpGet('https://fernando-herrera.com/cursos');
    print('éxito: $value');
  }
  // Podemos manejar exepciones o errores personalizados
  on Exception catch (err) {
    print('Tenemos una Exception: $err');
  }
  // Al no encontrar la exepción, significa que votó un error no esperado o no contemplado
  catch (err) {
    print('OOP!! algo terrible pasó: $err');
  }
  // Podemos ejecutar algo al final del try y catch, sin importar si fue error o exitosa la promesa
  finally {
    print('Fin del try y catch');
  }

  print('Fin del programa');
}

Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 1));

  // Tiramos una excepción o un error contemplado
  throw Exception('No hay parámetros en el URL');

  // Tiramos un error genérico
  // throw 'Error en la petición';

  // Respuesta exitosa
  // return 'Tenemos un valor de la petición';
}
