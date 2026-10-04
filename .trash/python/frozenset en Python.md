---
title: frozenset en Python
type: api-object
python_version: "3.14"
aliases: []
tags:
  - python
  - estudio
  - api
up:
  - "[[Tipos de conjunto en Python|Tipos de conjunto en Python]]"
prerequisites:
  - "[[set en Python|set en Python]]"
  - "[[Hashabilidad en Python|Hashabilidad en Python]]"
parts: []
related:
  - "[[Mutabilidad en Python|Mutabilidad en Python]]"
contrasts:
  - "[[set en Python|set en Python]]"
---

# frozenset en Python

Forma parte de [[Tipos de conjunto en Python|Tipos de conjunto en Python]].

Antes de estudiar: [[set en Python|set en Python]] · [[Hashabilidad en Python|Hashabilidad en Python]].

frozenset es un conjunto inmutable y hashable.

Se crea con `frozenset(iterable=())` y conserva elementos únicos hashables. Permite representar un grupo como clave de [[dict en Python|dict]] o como elemento de otro conjunto.

Expone las consultas `issubset`, `issuperset`, `isdisjoint` y las operaciones no mutantes `union`, `intersection`, `difference`, `symmetric_difference`, además de `copy`. Sus parámetros siguen los métodos equivalentes de [[set en Python|set]], pero las operaciones que producen conjuntos devuelven `frozenset` cuando se invocan sobre él. No ofrece `add`, `remove`, `update` ni propiedades editables.

`frozenset({1, 2}).union({3})` devuelve un nuevo conjunto congelado; intentar llamar `.add(3)` produce `AttributeError`.

## Ejemplo verificable

```python
grupo = frozenset([2, 1, 2])
indice = {grupo: 'equipo'}
print(indice[frozenset([1, 2])])
print(sorted(grupo.union({3})))
```

Salida esperada:

```text
equipo
[1, 2, 3]
```

## Para comparar

- [[set en Python|set en Python]]

## Recuperación activa

> [!question]
> ¿Qué permite frozenset que set no permite como clave?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/library/stdtypes.html).
