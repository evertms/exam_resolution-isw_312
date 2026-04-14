import 'package:flutter/material.dart';

void main() {
  runApp(const MiApp());
}

class Usuario {
  final String nombre;
  final int edad;

  const Usuario({required this.nombre, required this.edad});
}

class MiApp extends StatelessWidget {
  const MiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const PantallaInicio(),
        '/perfil': (context) => const PantallaPerfil(),
      },
    );
  }
}

class PantallaInicio extends StatelessWidget {
  const PantallaInicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Inicio')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            const usuario = Usuario(nombre: 'Ana', edad: 24);

            // INICIO: Navegacion a /perfil enviando el objeto Usuario.
            Navigator.pushNamed(context, '/perfil', arguments: usuario);
            // FIN: Navegacion con argumentos hacia la ruta /perfil.
          },
          child: const Text('Ir a perfil'),
        ),
      ),
    );
  }
}

class PantallaPerfil extends StatelessWidget {
  const PantallaPerfil({super.key});

  @override
  Widget build(BuildContext context) {
    // INICIO: Recepcion y casteo del argumento enviado por Navigator.
    final usuario = ModalRoute.of(context)!.settings.arguments as Usuario;
    // FIN: Se obtiene el Usuario para usar nombre y edad en la vista.

    return Scaffold(
      appBar: AppBar(title: const Text('Perfil')),
      body: Center(
        child: Text('Nombre: ${usuario.nombre} | Edad: ${usuario.edad}'),
      ),
    );
  }
}
