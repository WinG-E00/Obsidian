---
title: Estructura de un proyecto en Python
type: atomic
python_version: "3.14"
aliases: []
tags:
  - python
  - estudio
up:
  - "[[Herramientas y práctica de Python|Herramientas y práctica de Python]]"
prerequisites:
  - "[[Paquetes en Python|Paquetes en Python]]"
  - "[[Punto de entrada y __main__ en Python|Punto de entrada y __main__ en Python]]"
  - "[[Dependencias y pip en Python|Dependencias y pip en Python]]"
parts: []
related:
  - "[[Pruebas con unittest en Python|Pruebas con unittest en Python]]"
  - "[[Proyecto integrador de inventario en Python|Proyecto integrador de inventario en Python]]"
contrasts: []
---

# Estructura de un proyecto en Python

Forma parte de [[Herramientas y práctica de Python|Herramientas y práctica de Python]].

Antes de estudiar: [[Paquetes en Python|Paquetes en Python]] · [[Punto de entrada y __main__ en Python|Punto de entrada y __main__ en Python]] · [[Dependencias y pip en Python|Dependencias y pip en Python]].

Un proyecto separa código importable, pruebas, metadatos y documentación.

Una estructura posible es:

```text
proyecto/
├── pyproject.toml
├── README.md
├── src/
│   └── miapp/
│       ├── __init__.py
│       ├── __main__.py
│       └── calculos.py
└── tests/
    └── test_calculos.py
```

La carpeta `src` evita ciertas importaciones accidentales desde la raíz; normalmente requiere instalar el proyecto en su entorno, por ejemplo en modo editable si el backend lo admite. No es obligatoria para comprender el lenguaje.

`pyproject.toml` puede declarar `[build-system]` para la construcción y `[project]` para nombre, versión, requisito de Python y dependencias. [[Paquetes en Python|El paquete importable]] organiza el código y [[Punto de entrada y __main__ en Python|__main__]] define la entrada. El ejemplo valida una expresión de requisito, no crea un proyecto.

## Ejemplo verificable

```python
import tomllib

configuracion = tomllib.loads('[project]\nname = "miapp"\nversion = "0.1.0"\nrequires-python = ">=3.14"\n')
print(configuracion['project']['requires-python'])
```

Salida esperada:

```text
>=3.14
```

## Recuperación activa

> [!question]
> ¿Qué función cumple pyproject.toml distinta de __init__.py?

## Referencia

[Documentación oficial de empaquetado de Python](https://packaging.python.org/en/latest/tutorials/packaging-projects/).
