import 'package:flutter/material.dart';
import 'package:hello_world_app/presentation/screens/counter_functions_screen.dart';
import 'package:hello_world_app/presentation/screens/counter_screen.dart';

void main() {
  // Toda aplicación de Flutter tiene un método principal que corre el proyecto el cual es runApp
  // Notese que debe recibir un Widget
  runApp(const MyApp());
}

// Esta clase basicamente es la aplicación
// Usamos un StatelessWidget ya que no hay manejo de estado ni es dinámico, es completamente estático
class MyApp extends StatelessWidget {
  // Con esto creamos un key para poder llamar al objeto
  const MyApp({super.key});

  // Debemos implementar esto obligatoriamente
  @override
  Widget build(BuildContext context) {
    // Debemos retornar un Widget en forma de un const
    return MaterialApp(
      // Esta propiedad del widget quita el tag en la UI que dice debbugger
      debugShowCheckedModeBanner: false,
      // Esto es solamente para usar el tema Material3
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blue
      ),
      home: const CounterFunctionsScreen()
    );
  }
}
