# AGENTS.md - Contexto del Proyecto

Este archivo proporciona la guía y contexto esencial para los agentes de inteligencia artificial y desarrolladores que trabajen en este repositorio.

---

## 1. Visión General del Proyecto

- **Nombre del proyecto:** `mi_app_1` (Directorio: `262SeminarioApp1`)
- **Tipo de aplicación:** Aplicación móvil desarrollada con Flutter.
- **Contexto:** Proyecto de práctica y componentes de interfaz para el Seminario de Aplicaciones Móviles (Universidad Icesi).
- **Entorno y Tecnologías:**
  - **Framework:** Flutter (Material Design 3 activado)
  - **Lenguaje:** Dart (SDK `^3.12.2` o superior)
  - **Iconografía:** `cupertino_icons` y Material Icons
  - **Linter:** `package:flutter_lints/flutter.yaml`

---

## 2. Estructura del Proyecto

```text
262SeminarioApp1/
├── assets/
│   └── images/               # Imágenes locales (ej. avatar.png)
├── lib/
│   ├── components/           # Widgets reutilizables y modulares de UI
│   │   ├── chat_item.dart        # Ítem de lista de conversación de chat
│   │   ├── contact_card.dart     # Tarjeta individual de contacto sugerido
│   │   ├── primary_button.dart   # Botón de acción principal con icono
│   │   ├── profile_info.dart     # Sección de encabezado e información de perfil
│   │   ├── secondary_button.dart # Botón de acción secundaria con icono
│   │   ├── stat_card.dart        # Indicador numérico individual (posts, seguidores, etc.)
│   │   └── stats_row.dart        # Fila horizontal que agrupa múltiples StatCards
│   ├── screens/              # Vistas completas de la aplicación
│   │   └── profile_screen.dart   # Pantalla principal de visualización de perfil
│   └── main.dart             # Punto de entrada de la aplicación (App y rutas)
├── test/
│   └── widget_test.dart      # Pruebas de widgets unitarias/integración
├── analysis_options.yaml     # Configuración de linter para Dart/Flutter
└── pubspec.yaml              # Dependencias y configuración de assets
```

---

## 3. Comandos de Desarrollo Frecuentes

| Tarea | Comando |
| :--- | :--- |
| Instalar / actualizar dependencias | `flutter pub get` |
| Ejecutar análisis estático (linter) | `flutter analyze` |
| Ejecutar pruebas unitarias / widgets | `flutter test` |
| Ejecutar aplicación en dispositivo/emulador | `flutter run` |
| Limpiar caché de compilación | `flutter clean` |
| Verificar versiones desactualizadas | `flutter pub outdated` |

---

## 4. Convenciones de Código y Arquitectura

1. **Modularización de Componentes:**
   - La interfaz se diseña bajo principios de composición de widgets.
   - Todo componente reutilizable debe ubicarse dentro de `lib/components/`.
   - Las pantallas completas pertenecen a `lib/screens/`.
2. **Estructura de Widgets y Constructores:**
   - Preferir constructores `const` siempre que las propiedades sean inmutables.
   - Declarar constructores públicos con parámetro `super.key` (`const MiWidget({super.key, ...})`).
   - Usar `required` explícito para propiedades obligatorias.
3. **Uso de Funcionalidades Modernas de Flutter:**
   - Se utiliza la propiedad `spacing` nativa en `Row` y `Column` (introducida en versiones recientes de Flutter).
4. **Enrutamiento:**
   - Las rutas principales están configuradas en `MaterialApp` dentro de `lib/main.dart` (ruta inicial actual: `'/profile'`).

---

## 5. Puntos de Atención y Estado Actual

- **Clase Raíz:** La clase principal de la aplicación es `App` (no `MyApp`) en `lib/main.dart`.
- **Pruebas en `test/widget_test.dart`:** Si se ejecutan pruebas de widgets, asegurarse de que instancien `App()` y no `MyApp()`.
- **Assets:** La carpeta `assets/images/` está declarada en `pubspec.yaml`. Para usar imágenes locales, asegurarse de que el archivo exista en la ruta antes de cargarlo con `Image.asset()`.

---

## 6. Reglas para Agentes de IA

1. **Validación tras cambios:** Siempre ejecuta `flutter analyze` después de modificar archivos de Dart para asegurar que no se introduzcan advertencias de linter ni errores de tipado.
2. **Consistencia de Estilos:** Mantener la coherencia con el tema existente (`colorScheme` basado en `seedColor: Colors.deepPurple` y componentes con estilos definidos como botones azulados `#4A94EC`).
3. **Preservar Documentación:** Mantener los comentarios en código existentes y documentar nuevas clases y métodos públicos usando comentarios Dartdoc (`///`).
4. **No modificar dependencias innecesariamente:** No añadir paquetes a `pubspec.yaml` sin justificación clara o solicitud explícita del usuario.
