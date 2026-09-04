---
title: "Desempaquetado en Python"
type: atomic
python_version: "3.14"
aliases: []
tags:
  - "python"
  - "estudio"
up:
  - "[[IA graphs/python/Parámetros y argumentos en Python|Parámetros y argumentos en Python]]"
prerequisites:
  - "[[IA graphs/python/Variables y asignación en Python|Variables y asignación en Python]]"
  - "[[IA graphs/python/tuple en Python|tuple en Python]]"
  - "[[IA graphs/python/dict en Python|dict en Python]]"
parts: []
related:
  - "[[IA graphs/python/args y kwargs en Python|args y kwargs en Python]]"
contrasts: []
---

# Desempaquetado en Python

Forma parte de [[IA graphs/python/Parámetros y argumentos en Python|Parámetros y argumentos en Python]].

Antes de estudiar: [[IA graphs/python/Variables y asignación en Python|Variables y asignación en Python]] · [[IA graphs/python/tuple en Python|tuple en Python]] · [[IA graphs/python/dict en Python|dict en Python]].

Desempaquetar distribuye elementos o asociaciones en varios destinos.

En asignación, `a, b = iterable` exige la cantidad apropiada; una estrella como `primero, *resto` recoge el sobrante en una lista. La cantidad incorrecta produce `ValueError`.

En llamadas, `f(*iterable)` expande argumentos posicionales y `f(**mapeo)` expande argumentos por nombre, cuyas claves deben ser cadenas. En construcciones como `[*a, *b]` o `{**a, **b}` se combinan contenidos; las claves repetidas de un dict se sobrescriben, mientras argumentos repetidos en una llamada producen `TypeError`.

## Ejemplo verificable

```python
primero, *resto = [1, 2, 3]
print(primero, resto)
def suma(a, b):
    return a + b
print(suma(*[2, 4]))
print(suma(**{'a': 3, 'b': 5}))
```

Salida esperada:

```text
1 [2, 3]
6
8
```

## Recuperación activa

> [!question]
> ¿Por qué una clave repetida es válida al construir un dict y no al llamar una función?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/reference/expressions.html).
