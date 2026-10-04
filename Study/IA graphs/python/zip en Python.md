---
title: zip en Python
type: atomic
python_version: "3.14"
aliases: []
tags:
  - python
  - estudio
up:
  - "[[Iteración en Python|Iteración en Python]]"
prerequisites:
  - "[[Iterador en Python|Iterador en Python]]"
  - "[[tuple en Python|tuple en Python]]"
parts: []
related:
  - "[[Desempaquetado en Python|Desempaquetado en Python]]"
contrasts: []
---

# zip en Python

Forma parte de [[Iteración en Python|Iteración en Python]].

Antes de estudiar: [[Iterador en Python|Iterador en Python]] · [[tuple en Python|tuple en Python]].

zip agrupa elementos simultáneos de varios iterables en tuplas.

Firma: `zip(*iterables, strict=False)`. Devuelve un iterador. Por defecto termina cuando se agota el iterable más corto. Con `strict=True`, las longitudes diferentes producen `ValueError` al consumir el recorrido, no necesariamente al crearlo.

Resulta útil para columnas relacionadas cuya correspondencia importa. No agrega relleno a los datos faltantes; para eso existe `itertools.zip_longest`.

## Ejemplo verificable

```python
print(list(zip(['a', 'b'], [1, 2])))
try:
    print(list(zip([1, 2], [3], strict=True)))
except ValueError:
    print('longitudes distintas')
```

Salida esperada:

```text
[('a', 1), ('b', 2)]
longitudes distintas
```

## Recuperación activa

> [!question]
> ¿En qué momento detecta zip que sobran elementos con strict=True?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/library/functions.html).
