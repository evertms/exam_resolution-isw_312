import 'package:flutter/material.dart';

void main() {
  runApp(const MiApp());
}

class MiApp extends StatelessWidget {
  const MiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: EstadoWidget(),
    );
  }
}

class EstadoWidget extends StatefulWidget {
  const EstadoWidget({super.key});

  @override
  State<EstadoWidget> createState() => _EstadoWidgetState();
}

class _EstadoWidgetState extends State<EstadoWidget> {
  bool estaActivo = true;

  void cambiarEstado() {
    setState(() {
      estaActivo = !estaActivo;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Estado')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Icon(Icons.home, size: 30),
                Icon(Icons.settings, size: 30),
              ],
            ),

            const SizedBox(height: 20),
            
            Expanded(
              child: Center(
                child: Text(
                  estaActivo ? 'Activo' : 'Inactivo',
                  style: const TextStyle(fontSize: 28),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: cambiarEstado,
              child: const Text('Cambiar estado'),
            ),
          ],
        ),
      ),
    );
  }
}
