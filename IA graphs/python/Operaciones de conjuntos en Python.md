---
title: "Operaciones de conjuntos en Python"
type: atomic
python_version: "3.14"
aliases: []
tags:
  - "python"
  - "estudio"
up:
  - "[[IA graphs/python/set en Python|set en Python]]"
prerequisites:
  - "[[IA graphs/python/set en Python|set en Python]]"
parts: []
related:
  - "[[IA graphs/python/Operadores lógicos y cortocircuito en Python|Operadores lógicos y cortocircuito en Python]]"
contrasts: []
---

# Operaciones de conjuntos en Python

Forma parte de [[IA graphs/python/set en Python|set en Python]].

Antes de estudiar: [[IA graphs/python/set en Python|set en Python]].

Unión, intersección y diferencia expresan relaciones entre pertenencias.

Con conjuntos `a` y `b`, `a | b` reúne elementos, `a & b` conserva comunes, `a - b` conserva los de a que faltan en b y `a ^ b` conserva los exclusivos de cada lado. Estos operadores crean un resultado nuevo.

`a <= b` pregunta si a es subconjunto y `a < b` si es subconjunto propio. Los operadores binarios esperan conjuntos; métodos como `a.union(iterable)` aceptan otros iterables. No confundir `&` y `|` con [[IA graphs/python/Operadores lógicos y cortocircuito en Python|and y or]], que realizan selección por verdad.

## Ejemplo verificable

```python
a = {1, 2}
b = {2, 3}
print(sorted(a | b), sorted(a & b))
print(sorted(a - b), sorted(a ^ b))
```

Salida esperada:

```text
[1, 2, 3] [2]
[1] [1, 3]
```

## Recuperación activa

> [!question]
> ¿Qué devuelve la diferencia simétrica que no devuelve la unión?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/library/stdtypes.html).
