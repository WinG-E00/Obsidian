---
title: str.split en Python
type: method
python_version: "3.14"
aliases: []
tags:
  - python
  - estudio
  - api
up:
  - "[[str en Python|str en Python]]"
prerequisites:
  - "[[str en Python|str en Python]]"
  - "[[list en Python|list en Python]]"
parts: []
related:
  - "[[str.join en Python|str.join en Python]]"
contrasts: []
---

# str.split en Python

Forma parte de [[str en Python|str en Python]].

Antes de estudiar: [[str en Python|str en Python]] · [[list en Python|list en Python]].

str.split divide un texto y devuelve una lista de cadenas.

Firma: `str.split(sep=None, maxsplit=-1) -> list[str]`. `sep` es un separador de texto; `None` agrupa espacios en blanco y descarta los extremos vacíos. `maxsplit` limita la cantidad de separaciones, no la cantidad de caracteres.

Con un separador explícito pueden aparecer cadenas vacías. No muta el receptor. `sep=''` produce `ValueError`. [[str.join en Python|str.join]] reconstruye un texto usando un separador elegido, aunque no necesariamente recupera los espacios originales.

## Ejemplo verificable

```python
print(' a   b '.split())
print('a,,b,'.split(','))
print('a:b:c'.split(':', 1))
```

Salida esperada:

```text
['a', 'b']
['a', '', 'b', '']
['a', 'b:c']
```

## Recuperación activa

> [!question]
> ¿Por qué split() y split(' ') pueden producir listas distintas?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/library/stdtypes.html).
