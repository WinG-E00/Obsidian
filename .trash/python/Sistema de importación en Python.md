---
title: Sistema de importación en Python
type: atomic
python_version: "3.14"
aliases: []
tags:
  - python
  - estudio
up:
  - "[[Módulos y paquetes en Python|Módulos y paquetes en Python]]"
prerequisites:
  - "[[import en Python|import en Python]]"
  - "[[Variables y asignación en Python|Variables y asignación en Python]]"
parts: []
related:
  - "[[Paquetes en Python|Paquetes en Python]]"
contrasts: []
---

# Sistema de importación en Python

Forma parte de [[Módulos y paquetes en Python|Módulos y paquetes en Python]].

Antes de estudiar: [[import en Python|import en Python]] · [[Variables y asignación en Python|Variables y asignación en Python]].

El sistema de importación localiza módulos, crea sus objetos y ejecuta su inicialización.

Consulta la caché `sys.modules`; si falta el módulo, buscadores y cargadores determinan cómo obtenerlo. `sys.path` participa en la búsqueda habitual de archivos, pero no describe todos los mecanismos posibles.

Un módulo se registra antes de terminar su inicialización, por lo que una importación circular puede observarlo incompleto. Nombrar un archivo local `json.py` puede ocultar el módulo esperado. `importlib.import_module(nombre)` ofrece importación por nombre dinámico; recargar módulos tiene límites y no actualiza todas las referencias existentes.

## Ejemplo verificable

```python
import importlib
import sys
modulo = importlib.import_module('math')
print(modulo is sys.modules['math'])
```

Salida esperada:

```text
True
```

## Recuperación activa

> [!question]
> ¿Por qué una importación circular puede ver atributos todavía inexistentes?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/reference/import.html).
