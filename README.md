# Mi Perfil Dev

Mi Perfil Dev es una aplicación creada en Flutter que muestra información de un desarrollador, sus habilidades y permite realizar algunos cambios visuales durante la ejecución.

Este proyecto fue desarrollado como práctica para aplicar conceptos básicos de creación de aplicaciones móviles, manejo de estados y navegación entre pantallas.

## Funcionalidades

- Mostrar información del desarrollador.
- Mostrar una lista de habilidades y tecnologías favoritas.
- Ver el detalle de cada habilidad seleccionada.
- Cambiar el color favorito del perfil durante la ejecución.
- Navegar entre diferentes pantallas.

## Tecnologías utilizadas

- Flutter
- Dart
- Riverpod para manejar el estado de la aplicación.
- GoRouter para la navegación.
- Font Awesome para los iconos.

## Estructura del proyecto

El proyecto está organizado separando modelos, proveedores de estado, pantallas y componentes reutilizables.

lib/
│
├── core/
│   └── routes/
│
├── data/
│   └── models/
│
├── providers/
│
└── presentation/
    ├── widgets/
    └── screen/

## Descripción

La aplicación cuenta con una pantalla principal donde se muestra el perfil del desarrollador junto con sus tecnologías favoritas.

Cada tecnología tiene una tarjeta con su icono y nombre. Al seleccionarla, el usuario puede acceder a una pantalla con más información sobre esa habilidad.

También permite cambiar el color principal del perfil, actualizando la interfaz sin necesidad de reiniciar la aplicación.

## Instalación

Clonar el repositorio:

```bash
git clone https://github.com/josueSerna/my_profile_dev.git