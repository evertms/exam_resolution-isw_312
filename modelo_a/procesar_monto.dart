Future<String> procesarMonto(double monto, String moneda) async {
  await Future.delayed(const Duration(seconds: 1));
  return 'Procesando $monto $moneda';
}

Future<void> main() async {
  String montoProcesado = await procesarMonto(100, "BOB");
  print(montoProcesado);
}
