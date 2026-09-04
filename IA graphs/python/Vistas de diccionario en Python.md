---
title: "Vistas de diccionario en Python"
type: atomic
python_version: "3.14"
aliases: []
tags:
  - "python"
  - "estudio"
up:
  - "[[IA graphs/python/dict en Python|dict en Python]]"
prerequisites:
  - "[[IA graphs/python/dict en Python|dict en Python]]"
  - "[[IA graphs/python/Iterable en Python|Iterable en Python]]"
parts: []
related:
  - "[[IA graphs/python/Copia superficial y profunda en Python|Copia superficial y profunda en Python]]"
contrasts: []
---

# Vistas de diccionario en Python

Forma parte de [[IA graphs/python/dict en Python|dict en Python]].

Antes de estudiar: [[IA graphs/python/dict en Python|dict en Python]] · [[IA graphs/python/Iterable en Python|Iterable en Python]].

keys, values e items ofrecen vistas dinámicas de un diccionario.

No son listas copiadas. `keys()` recorre claves; `values()`, valores; `items()`, tuplas `(clave, valor)`. Las vistas observan inserciones y eliminaciones posteriores y mantienen el orden del diccionario.

`list(d.items())` obtiene una instantánea superficial. Cambiar el tamaño del diccionario mientras se itera sobre él puede producir `RuntimeError` o un recorrido incompleto. `keys` e `items` admiten determinadas operaciones de conjuntos, pero los valores de una vista `items` condicionan cuáles son posibles.

## Ejemplo verificable

```python
datos = {'a': 1}
vista = datos.items()
copia = list(vista)
datos['b'] = 2
print(list(vista))
print(copia)
```

Salida esperada:

```text
[('a', 1), ('b', 2)]
[('a', 1)]
```

## Recuperación activa

> [!question]
> ¿Qué distingue una vista de list(d.items())?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/library/stdtypes.html).
