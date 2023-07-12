// Complete example in https://medium.com/flutter-community/dart-what-are-mixins-3a72344011f3

// Primero que nada tenemos a una clase abstracta de la que todo surge, en este caso animal
abstract class Animal {}

// Ahora, los animales pueden tener diferentes caracteristicas pero al final,
// son animales
abstract class Mamifero extends Animal {}

abstract class Bird extends Animal {}

abstract class Fish extends Animal {}

// Ahora bien, los animales pueden hacer muchas cosas, hay mamiferos que pueden volar, caminar y nadar
// O por ejemplo hay aves que solo vuelan, es decir son propiedades que pueden encontrarse en
// Cualquiera de las clases anteriores, por lo que creamos clases abstractas de dichas propiedades con mixin
mixin class Volador {
  void volar() => print('Estoy volando!!!');
}

mixin class Caminante {
  void caminar() => print('Estoy caminando!!!');
}

mixin class Nadador {
  void nadar() => print('Estoy nadando!!!');
}

// Teniendo esto definido, ahora si podemos crear animales con estas propiedades
// Haciendo uso de Mixin con with, agregamos esta "especialización"
class Delfin extends Mamifero with Nadador {}

// Y podemos agregar varios
class Murcielago extends Mamifero with Volador, Caminante {}

class Gato extends Mamifero with Volador, Caminante {}


void main(){
  final delfin = Delfin();
  delfin.nadar();
}