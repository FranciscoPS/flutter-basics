import 'package:flutter/material.dart';

// El StatefulWidget nos permite manejar estado
class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

// El StatelessWidget NO PERMITE CAMBIAR ESTADO, son Widgets completamente fijos
// La siguiente forma nos permite heredar de un StatefulWidget, el cual ya nos permite usar estado
class _CounterScreenState extends State<CounterScreen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
      ),
      body: Center(
        child: Column(
          // El mainAxisAlignment ayuda a centrar la columna
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$clickCounter',
              style:
                  const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
            ),
            const Text(
              'Click',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w100),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Con el state, nos permite actualizar el estado de la aplicación y por ende vuelve a renderizar este widget
          setState(() {
            clickCounter++;
          });
        },
        child: const Icon(Icons.plus_one),
      ),
    );
  }
}
