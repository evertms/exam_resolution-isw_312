enum EstadoPedido {
  pendiente,
  enviado,
  entregado;

  String descripcion() {
    switch (this) {
      case EstadoPedido.pendiente:
        return 'Su pedido esta pendiente de preparacion';
      case EstadoPedido.enviado:
        return 'Su pedido esta en camino';
      case EstadoPedido.entregado:
        return 'Su pedido fue entregado';
    }
  }
}

void main() {
  for (final estado in EstadoPedido.values) {
    print('${estado.name}: ${estado.descripcion()}');
  }
}
