---
title: Copia superficial y profunda en Python
type: atomic
python_version: "3.14"
aliases: []
tags:
  - python
  - estudio
up:
  - "[[Modelo de objetos en Python|Modelo de objetos en Python]]"
prerequisites:
  - "[[Mutabilidad en Python|Mutabilidad en Python]]"
parts: []
related:
  - "[[list en Python|list en Python]]"
  - "[[dict en Python|dict en Python]]"
contrasts: []
---

# Copia superficial y profunda en Python

Forma parte de [[Modelo de objetos en Python|Modelo de objetos en Python]].

Antes de estudiar: [[Mutabilidad en Python|Mutabilidad en Python]].

Copiar permite crear otro contenedor y decidir si sus elementos internos se comparten.

Una copia superficial crea el contenedor exterior y conserva las referencias a sus elementos. `list.copy()`, `dict.copy()` y `copy.copy()` siguen esa idea. Una copia profunda usa `copy.deepcopy()` para copiar recursivamente, conservando mediante una memoria interna relaciones y ciclos ya visitados.

No todo recurso puede o debe duplicarse: archivos abiertos o conexiones tienen identidad externa. La elección depende del [[Mutabilidad en Python|estado mutable]] que necesitás independizar, no de que una copia sea siempre mejor que otra.

## Ejemplo verificable

```python
from copy import deepcopy
original = [[1]]
superficial = original.copy()
profunda = deepcopy(original)
original[0].append(2)
print(superficial, profunda)
```

Salida esperada:

```text
[[1, 2]] [[1]]
```

## Recuperación activa

> [!question]
> ¿Qué nivel de la estructura comparte una copia superficial?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/library/copy.html).
