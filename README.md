# Repositorio: Soluciones Primer Parcial - Repechaje

Este repositorio contiene las soluciones a la **parte práctica** de los modelos de examen A y B de la materia *Plataformas Móviles* (Flutter / Dart).  
El código sigue las convenciones del lenguaje Dart y buenas prácticas de Flutter.

## Estructura del repositorio
```
├── README.md
├── modelo_a/
│ ├── autenticador.dart # Ejercicio 5: Clases abstractas e implementación
│ ├── procesar_monto.dart # Ejercicio 6: Función asincrónica con Future
│ └── estado_widget.dart # Ejercicio 7: StatefulWidget con botón y cambio de texto
└── modelo_b/
├── estado_pedido.dart # Ejercicio 5: Enhanced Enum con método descripcion()
├── navegacion_usuario.dart # Ejercicio 6: Navegación con paso de objeto Usuario
└── tarjeta_producto.dart # Ejercicio 7: StatelessWidget con tarjeta de producto
```

## Branching (GitFlow)

El desarrollo se realizó siguiendo una estrategia basada en **GitFlow**:

1. A partir de `main` (solo contiene este `README.md`) se crearon las ramas **feature** por modelo:
   - `feat/model-a`
   - `feat/model-b`

2. Dentro de cada rama de modelo, se crearon sub‑ramas por cada ejercicio práctico:
   - Para `feat/model-a`:
     - `feat/classes-abstraction-a`   → solución del ejercicio 5
     - `feat/async-types-a`           → solución del ejercicio 6
     - `feat/ui-structure-a`          → solución del ejercicio 7
   - Para `feat/model-b`:
     - `feat/enhanced-enums-b`        → solución del ejercicio 5
     - `feat/navigation-data-b`       → solución del ejercicio 6
     - `feat/widget-composition-b`    → solución del ejercicio 7

3. Cada sub‑rama fue fusionada (*merged*) en su respectiva rama de modelo (`feat/model-a` o `feat/model-b`) mediante **merge commits** convencionales.

4. Las ramas `feat/model-a` y `feat/model-b` contienen el código completo y estable de cada modelo, listo para revisión.

> **Nota:** La rama `main` únicamente aloja este archivo `README.md`, sin código fuente.

## Ubicación de cada respuesta práctica

### Modelo A

| Ejercicio | Enunciado breve | Archivo | Ruta |
|-----------|----------------|---------|------|
| 5 | Clase abstracta `Autenticador` y clase `GoogleAuth` | `autenticador.dart` | `modelo_a/autenticador.dart` |
| 6 | Función asincrónica que procesa monto y moneda | `procesar_monto.dart` | `modelo_a/procesar_monto.dart` |
| 7 | `StatefulWidget` con `Column`, `Row` y botón que cambia "Activo"/"Inactivo" | `estado_widget.dart` | `modelo_a/estado_widget.dart` |

### Modelo B

| Ejercicio | Enunciado breve | Archivo | Ruta |
|-----------|----------------|---------|------|
| 5 | `enum EstadoPedido` con método `descripcion()` | `estado_pedido.dart` | `modelo_b/estado_pedido.dart` |
| 6 | Navegación a ruta `/perfil` pasando objeto `Usuario` | `navegacion_usuario.dart` | `modelo_b/navegacion_usuario.dart` |
| 7 | `StatelessWidget` de tarjeta de producto con `Scaffold`, `Column` y operador ternario para icono de oferta | `tarjeta_producto.dart` | `modelo_b/tarjeta_producto.dart` |

## Cómo ejecutar / probar las soluciones

Cada archivo `.dart` contiene el código necesario para su respectivo ejercicio.  
Para probar los fragmentos que no dependen de Flutter (ejercicios 5 y 6 del modelo A; y ejercicio 5 del modelo B) puedes usar el entorno Dart:

```bash
dart modelo_a/autenticador.dart
dart modelo_a/procesar_monto.dart
dart modelo_b/estado_pedido.dart
```

Para ejecutar los ejercicios que sí incluyen Flutter, se recomienda copiar el código y ejecutarlo en DartPad: [https://dartpad.dev](https://dartpad.dev). Esto aplica al ejercicio 7 del modelo A y a los ejercicios 6 y 7 del modelo B.