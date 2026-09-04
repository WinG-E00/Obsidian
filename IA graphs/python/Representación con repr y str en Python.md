---
title: "Representación con repr y str en Python"
type: atomic
python_version: "3.14"
aliases: []
tags:
  - "python"
  - "estudio"
up:
  - "[[IA graphs/python/Métodos especiales en Python|Métodos especiales en Python]]"
prerequisites:
  - "[[IA graphs/python/Clases en Python|Clases en Python]]"
  - "[[IA graphs/python/str en Python|str en Python]]"
parts: []
related:
  - "[[IA graphs/python/f-strings en Python|f-strings en Python]]"
  - "[[IA graphs/python/dataclasses en Python|dataclasses en Python]]"
contrasts: []
---

# Representación con repr y str en Python

Forma parte de [[IA graphs/python/Métodos especiales en Python|Métodos especiales en Python]].

Antes de estudiar: [[IA graphs/python/Clases en Python|Clases en Python]] · [[IA graphs/python/str en Python|str en Python]].

__repr__ orienta la representación a inspección y __str__ a presentación.

`repr(objeto)` llama a `__repr__`; `str(objeto)` y normalmente `print(objeto)` usan `__str__`. Si falta `__str__`, se puede recurrir a `__repr__`. Ambos métodos deben devolver `str`, o se produce `TypeError`.

Una representación útil muestra el estado relevante. Puede parecer una expresión recreable cuando sea razonable, pero no debe dependerse de que toda representación pueda evaluarse. Las colecciones suelen mostrar la representación repr de sus elementos; [[IA graphs/python/f-strings en Python|!r]] la solicita explícitamente.

## Ejemplo verificable

```python
class Punto:
    def __repr__(self):
        return 'Punto()'
    def __str__(self):
        return 'un punto'

p = Punto()
print(str(p), repr(p))
print([p])
```

Salida esperada:

```text
un punto Punto()
[Punto()]
```

## Recuperación activa

> [!question]
> ¿Por qué print(p) y print([p]) pueden mostrar formatos distintos?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/reference/datamodel.html).
