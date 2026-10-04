---
title: tuple en Python
type: api-object
python_version: "3.14"
aliases:
  - Tupla de Python
tags:
  - python
  - estudio
  - api
up:
  - "[[Secuencias en Python|Secuencias en Python]]"
prerequisites:
  - "[[Mutabilidad en Python|Mutabilidad en Python]]"
  - "[[Indexación en Python|Indexación en Python]]"
parts: []
related:
  - "[[Desempaquetado en Python|Desempaquetado en Python]]"
  - "[[Hashabilidad en Python|Hashabilidad en Python]]"
contrasts:
  - "[[list en Python|list en Python]]"
---

# tuple en Python

Forma parte de [[Secuencias en Python|Secuencias en Python]].

Antes de estudiar: [[Mutabilidad en Python|Mutabilidad en Python]] · [[Indexación en Python|Indexación en Python]].

tuple es una secuencia inmutable de referencias a objetos.

Se forma con comas: `(7,)` es una tupla de un elemento; `(7)` es el entero entre paréntesis. `tuple(iterable=())` construye una tupla a partir de un recorrido.

| Método | Entrada y propósito | Retorno | Límite |
|---|---|---|---|
| `count(valor)` | Cuenta coincidencias por igualdad | `(1, 1).count(1)` → `2: int` | No muta |
| `index(valor[, start[, stop]])` | Busca la primera posición en un tramo | `(4, 5).index(5)` → `1: int` | `ValueError` si falta |

No tiene propiedades públicas de contenido editables; se consulta mediante índices, slicing y `len`. Es hashable solo cuando todos sus elementos son [[Hashabilidad en Python|hashables]]. Una lista contenida puede mutar sin que se reemplace la referencia almacenada en la tupla.

## Ejemplo verificable

```python
dato = ([1], 'a')
dato[0].append(2)
print(dato)
print(type((7,)).__name__)
```

Salida esperada:

```text
([1, 2], 'a')
tuple
```

## Para comparar

- [[list en Python|list en Python]]

## Recuperación activa

> [!question]
> ¿Qué permanece inmutable cuando una tupla contiene una lista?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/library/stdtypes.html).
