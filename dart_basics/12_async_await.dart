void main() async {
  print('Inicio del programa');

  // Si ya manejamos un async y await, debemos manejarlo por medio de un try y catch
  try {
    final value = await httpGet('https://fernando-herrera.com/cursos');
    print(value);
  } catch (err) {
    print('Tenemos un error: $err');
  }

  print('Fin del programa');
}

// Si utilizamos un await, podemos hacer que todo el código espere a la resolución de una promesa
Future<String> httpGet(String url) async {
  // Con este await vamos a esperar a que este Future se realice,
  // es decir la promesa se complete exitosa o fallidamente
  await Future.delayed(const Duration(seconds: 1), () {
    // Manejando async o await, podremos detonar la resolución de la promesa y se atrapará en el código principal
    // Ya ni siquiera seguirá a lo que esta después de este await
    throw 'Exploto dentro del Duration';
  });

  // Y ahora que espero al código anterior, podriamos tirar la resolución de la promesa
  throw 'Error en la petición';
  //return 'Resolución exitosa';
}
