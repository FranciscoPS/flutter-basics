void main() {
  final numbers = [1, 2, 3, 4, 5, 5, 5, 5, 5, 6, 7, 8, 9];

  // Lista completa
  print('List original ${numbers}');
  // Longitud de la lista
  print('Length ${numbers.length}');
  // Un elemento de la lista vía índice
  print('Index 0 ${numbers[0]}');
  // Primer elemento de la lista
  print('Frist ${numbers.first}');
  // Últimoi elemento de la lista
  print('Last ${numbers.last}');
  // Lista en orden reverso NOTA: Esto convierte la lista a Iterable, en lugar de aparecer con [] aparece entre ()
  print('Reversed: ${numbers.reversed}');

  // ITERABLE vs LISTAS

  // La diferencia con una lista, es que con el iterable, tu no
  // puedes garantizar que leer elementos con indice será
  // eficiente

  // Ejemplo:

  // Iterable<int> iterable = [1, 2, 3];
  // iterable[1]; // NO HACER
  // Usar esto
  // int value = iterable.elementAt(1);

  // Los iterables tienen su propio set de métodos que
  // permiten barrer y controlarlo.

  // Como por ejemplo:

  // String element =
  // iterable.firstWhere(
  //    (element) => element.length > 5
  // );

  final reversedNumbers = numbers.reversed;
  print('Iterable: ${reversedNumbers}');
  print('List: ${reversedNumbers.toList()}');
  // Si usamos Set tendremos al array PERO CON VALORES ÚNICOS, ES DECIR NINGÚN VALOR SE REPITE
  print('Set: ${reversedNumbers.toSet()}');

  // El where nos permite usar un callback para evaluar cada elemento, si la condición regresa true lo retorna
  final numbersGreaterThan5 = numbers.where((int num) {
    return num > 5;
  });
  print('Greater than 5: ${numbersGreaterThan5}');
}
