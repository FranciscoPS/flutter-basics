void main() {
  final mySquare = Square(side: -20);

  print('Área: ${mySquare.area}');
}

class Square {
  // Para declarar una propiedad como privada se utiliza guión bajo
  double _side;

  // Al ser una variable privada, no podemos asignar el valor directamente desde el constructor
  // Square({required double side}) : this._side = side;

  // Adicionalmente, tenemos la opción de crear aserciones para agregar reglas de negocio
  // En este caso nos aseguramos de que el valor de side sea mayor o igual a 0
  // En caso contrario, no asigna valor
  Square({required double side})
      : assert(side >= 0, 'Side must be >= 0'),
        _side = side;

  // Getters & Setters
  double get area {
    return this._side * this._side;
  }

  set side(double value) {
    print('Setting new value: ${value}');

    if (value < 0) throw 'Value must be >=0';

    this._side = value;
  }

  double calculateArea() {
    return this._side * this._side;
  }
}