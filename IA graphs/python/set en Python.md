---
title: "set en Python"
type: api-object
python_version: "3.14"
aliases:
  - "Conjunto mutable de Python"
tags:
  - "python"
  - "estudio"
  - "api"
up:
  - "[[IA graphs/python/Tipos de conjunto en Python|Tipos de conjunto en Python]]"
prerequisites:
  - "[[IA graphs/python/Hashabilidad en Python|Hashabilidad en Python]]"
  - "[[IA graphs/python/Mutabilidad en Python|Mutabilidad en Python]]"
parts:
  - "[[IA graphs/python/Operaciones de conjuntos en Python|Operaciones de conjuntos en Python]]"
related:
  - "[[IA graphs/python/Operaciones de conjuntos en Python|Operaciones de conjuntos en Python]]"
  - "[[IA graphs/python/frozenset en Python|frozenset en Python]]"
contrasts:
  - "[[IA graphs/python/frozenset en Python|frozenset en Python]]"
---

# set en Python

Forma parte de [[IA graphs/python/Tipos de conjunto en Python|Tipos de conjunto en Python]].

Antes de estudiar: [[IA graphs/python/Hashabilidad en Python|Hashabilidad en Python]] · [[IA graphs/python/Mutabilidad en Python|Mutabilidad en Python]].

set mantiene elementos únicos y hashables en un contenedor mutable.

Un conjunto vacío se crea con `set()`; `{}` crea un diccionario. No hay índices ni orden de inserción garantizado. Para mostrar ejemplos con salida estable, se puede ordenar el resultado si los elementos admiten ordenación.

| Firma | Entrada y propósito | Retorno | Efecto o error |
|---|---|---|---|
| `add(x)` | Agrega un elemento hashable | `None` | Muta; duplicados no cambian el conjunto |
| `update(*iterables)` | Incorpora elementos | `None` | Muta |
| `remove(x)` | Elimina un elemento | `None` | Ausente: `KeyError` |
| `discard(x)` | Elimina si existe | `None` | Ausente: no falla |
| `pop()` | Extrae un elemento arbitrario | Objeto extraído | Vacío: `KeyError` |
| `clear()` | Vacía | `None` | Muta |
| `copy()` | Copia superficial | `set` | No muta |
| `union(*others)`, `intersection(*others)`, `difference(*others)` | Operación con iterables | `set` | No mutan |
| `symmetric_difference(other)` | Elementos exclusivos | `set` | No muta |
| `intersection_update`, `difference_update`, `symmetric_difference_update` | Versiones sobre el receptor | `None` | Mutan |
| `issubset(other)`, `issuperset(other)`, `isdisjoint(other)` | Consulta de relación | `bool` | No mutan |

No tiene propiedades públicas editables. Las [[IA graphs/python/Operaciones de conjuntos en Python|operaciones de conjuntos]] tienen significado propio; `set` no puede ser elemento de otro set, mientras [[IA graphs/python/frozenset en Python|frozenset]] sí.

## Partes del concepto

- [[IA graphs/python/Operaciones de conjuntos en Python|Operaciones de conjuntos en Python]] — Unión, intersección y diferencia expresan relaciones entre pertenencias.

## Ejemplo verificable

```python
s = {3, 1, 1}
s.add(2)
s.discard(9)
print(sorted(s))
print(s.issubset({1, 2, 3, 4}))
```

Salida esperada:

```text
[1, 2, 3]
True
```

## Para comparar

- [[IA graphs/python/frozenset en Python|frozenset en Python]]

## Recuperación activa

> [!question]
> ¿Por qué {} no crea un conjunto vacío?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/library/stdtypes.html).
