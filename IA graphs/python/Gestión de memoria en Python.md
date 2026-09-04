---
title: "Gestión de memoria en Python"
type: atomic
python_version: "3.14"
aliases: []
tags:
  - "python"
  - "estudio"
up:
  - "[[IA graphs/python/Modelo de objetos en Python|Modelo de objetos en Python]]"
prerequisites:
  - "[[IA graphs/python/Variables y asignación en Python|Variables y asignación en Python]]"
  - "[[IA graphs/python/Eliminación de referencias con del en Python|Eliminación de referencias con del en Python]]"
parts: []
related:
  - "[[IA graphs/python/Sentencia with en Python|Sentencia with en Python]]"
contrasts: []
---

# Gestión de memoria en Python

Forma parte de [[IA graphs/python/Modelo de objetos en Python|Modelo de objetos en Python]].

Antes de estudiar: [[IA graphs/python/Variables y asignación en Python|Variables y asignación en Python]] · [[IA graphs/python/Eliminación de referencias con del en Python|Eliminación de referencias con del en Python]].

Python administra la vida de los objetos, pero los recursos externos necesitan cierre explícito.

CPython combina recuento de referencias con un recolector para ciertos ciclos. Estos mecanismos son detalles de implementación y no justifican depender de una destrucción inmediata en todas las variantes de Python.

Un objeto accesible debe seguir disponible; eliminar un nombre solo elimina una referencia. El momento de liberación de archivos o bloqueos debe controlarse mediante [[IA graphs/python/Sentencia with en Python|with]], no mediante la expectativa de que el recolector actúe enseguida. `__del__` tiene restricciones y no reemplaza un gestor de contexto.

## Ejemplo verificable

```python
a = []
b = a
del a
print(b)
```

Salida esperada:

```text
[]
```

## Recuperación activa

> [!question]
> ¿Por qué el cierre de un archivo no debería depender del recolector?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/library/gc.html).
