---
title: "range en Python"
type: api-object
python_version: "3.14"
aliases: []
tags:
  - "python"
  - "estudio"
  - "api"
up:
  - "[[IA graphs/python/Secuencias en Python|Secuencias en Python]]"
prerequisites:
  - "[[IA graphs/python/int en Python|int en Python]]"
  - "[[IA graphs/python/Indexación en Python|Indexación en Python]]"
parts: []
related:
  - "[[IA graphs/python/Bucle for en Python|Bucle for en Python]]"
  - "[[IA graphs/python/Iterador en Python|Iterador en Python]]"
contrasts: []
---

# range en Python

Forma parte de [[IA graphs/python/Secuencias en Python|Secuencias en Python]].

Antes de estudiar: [[IA graphs/python/int en Python|int en Python]] · [[IA graphs/python/Indexación en Python|Indexación en Python]].

range representa una secuencia inmutable de enteros calculada a partir de límites.

Firmas: `range(stop)` y `range(start, stop, step=1)`. Los argumentos deben comportarse como enteros; `stop` queda excluido y el paso no puede ser cero. No guarda una lista con todos los elementos.

| Miembro | Tipo y ejemplo para `range(1, 6, 2)` | Acceso o límite |
|---|---|---|
| `start`, `stop`, `step` | `1`, `6`, `2`: `int` | Solo lectura |
| `count(valor)` | `count(3)` → `1: int` | No muta |
| `index(valor)` | `index(3)` → `1: int` | `ValueError` si falta |

Permite índices, slicing, pertenencia y longitud. Es [[IA graphs/python/Iterable en Python|iterable]], pero no un [[IA graphs/python/Iterador en Python|iterador]]: `next(range(3))` falla. Un rango enorme puede existir aunque `len()` exceda el tamaño admitido por la plataforma.

## Ejemplo verificable

```python
r = range(1, 6, 2)
print(list(r))
print(r.start, r.stop, r.step)
print(3 in r)
```

Salida esperada:

```text
[1, 3, 5]
1 6 2
True
```

## Recuperación activa

> [!question]
> ¿Por qué range(3) se puede recorrer varias veces?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/library/stdtypes.html).
