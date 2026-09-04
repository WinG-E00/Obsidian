---
title: "Paquetes en Python"
type: atomic
python_version: "3.14"
aliases: []
tags:
  - "python"
  - "estudio"
up:
  - "[[IA graphs/python/Módulos y paquetes en Python|Módulos y paquetes en Python]]"
prerequisites:
  - "[[IA graphs/python/Módulo en Python|Módulo en Python]]"
  - "[[IA graphs/python/import en Python|import en Python]]"
parts: []
related:
  - "[[IA graphs/python/Punto de entrada y __main__ en Python|Punto de entrada y __main__ en Python]]"
  - "[[IA graphs/python/Sistema de importación en Python|Sistema de importación en Python]]"
contrasts: []
---

# Paquetes en Python

Forma parte de [[IA graphs/python/Módulos y paquetes en Python|Módulos y paquetes en Python]].

Antes de estudiar: [[IA graphs/python/Módulo en Python|Módulo en Python]] · [[IA graphs/python/import en Python|import en Python]].

Un paquete organiza módulos bajo nombres jerárquicos.

Un paquete regular suele ser una carpeta con `__init__.py`, que también puede contener código. Un paquete de espacio de nombres puede carecer de ese archivo y reunir porciones de distintas ubicaciones.

Un esquema sencillo es `miapp/__init__.py`, `miapp/calculos.py` y `miapp/__main__.py`. La importación absoluta usa `from miapp import calculos`; la relativa, dentro de un paquete, puede usar `from . import calculos`. Ejecutar un archivo interno directamente puede perder ese contexto; [[IA graphs/python/Punto de entrada y __main__ en Python|python -m]] lo conserva.

`__path__` identifica las ubicaciones de búsqueda del paquete; no pertenece a todos los módulos.

## Ejemplo verificable

```python
import email
print(email.__name__)
print(hasattr(email, '__path__'))
```

Salida esperada:

```text
email
True
```

## Recuperación activa

> [!question]
> ¿Por qué una importación relativa puede fallar al ejecutar directamente un archivo interno?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/reference/import.html).
