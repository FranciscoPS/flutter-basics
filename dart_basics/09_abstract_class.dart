void main() {
  final windPlant = WindPlant(initialEnergy: 0);
  final nuclearPlant = NuclearPlant(energyLeft: 0);

  print('wind: ${chargePhone(windPlant)}');
  print('nuclear: ${chargePhone(nuclearPlant)}');
}

double chargePhone(EnergyPlant plant) {
  if (plant.energyLeft < 10) {
    throw Exception('Not enough energy');
  }

  return plant.energyLeft - 10;
}

enum PlantType { nuclear, wind, water }

// Las clases abstractas funcionan como moldes, es decir no pueden ser instanciadas
// Comunmente solo se utiliza para crear alguna clase muy general y heredar a otras clases por medio de extends
// NO SE USA PARA SER INSTANCIADA O QUE EXISTAN OBJETOS DE ESTA CLASE
abstract class EnergyPlant {
  double energyLeft; // Energía que queda
  final PlantType type; // Solo podría ser planta nuclear, wind, water

  EnergyPlant({required this.energyLeft, required this.type});

  void consumeEnergy(double amount);
}

// Extends
// Basicamente hereda todas las propiedades y métodos,
// No es necesario implementar todo EnergyPlant
class WindPlant extends EnergyPlant {
  WindPlant({required double initialEnergy})
      // Usando super mandamos a llamar al constructor padre o del que fue extendido
      : super(energyLeft: initialEnergy, type: PlantType.wind);

  // Al ser una clase abstracta, debemos también satisfacer al método
  // Y para ello debemos sobreescribirlo
  @override
  void consumeEnergy(double amount) {
    energyLeft -= amount;
  }
}

// Implements
// Basicamente con implements en lugar de heredar, debemos "reimplementar" la clase abstracta
// Casi casi hacer un duplicado sin afectar a la clase abstracta y para ello debemos sobreescribir con @override
class NuclearPlant implements EnergyPlant {
  @override
  double energyLeft;

  @override
  final PlantType type = PlantType.nuclear;

  NuclearPlant({required this.energyLeft});

  @override
  void consumeEnergy(double amount) {
    energyLeft -= (amount * 0.5);
  }
}
