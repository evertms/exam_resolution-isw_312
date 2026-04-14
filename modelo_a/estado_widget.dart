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
