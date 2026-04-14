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
      home: TarjetaProducto(
        nombreProducto: 'Auriculares Bluetooth',
        enOferta: true,
      ),
    );
  }
}

class TarjetaProducto extends StatelessWidget {
  final String nombreProducto;
  final bool enOferta;

  const TarjetaProducto({
    super.key,
    required this.nombreProducto,
    required this.enOferta,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tienda')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              nombreProducto,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
            const SizedBox(height: 12),
            enOferta
                ? const Icon(Icons.local_offer, color: Colors.red, size: 32)
                : const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
