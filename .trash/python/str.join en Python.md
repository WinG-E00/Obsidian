---
title: str.join en Python
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
  - "[[Iterable en Python|Iterable en Python]]"
parts: []
related:
  - "[[str.split en Python|str.split en Python]]"
  - "[[Expresiones generadoras en Python|Expresiones generadoras en Python]]"
contrasts: []
---

# str.join en Python

Forma parte de [[str en Python|str en Python]].

Antes de estudiar: [[str en Python|str en Python]] · [[Iterable en Python|Iterable en Python]].

str.join construye una cadena intercalando un separador entre textos.

Firma: `separador.join(iterable_de_str) -> str`. El separador es el objeto receptor y el argumento aporta los fragmentos. Acepta listas, tuplas y otros iterables; no modifica sus elementos.

Un elemento que no sea `str` provoca `TypeError`; no se convierte automáticamente. Para unir números se puede convertir cada uno mediante [[Expresiones generadoras en Python|una expresión generadora]]. Un iterable vacío produce `''` y uno de un elemento no incorpora separador.

## Ejemplo verificable

```python
print(' / '.join(['Python', 'Obsidian']))
print(','.join(str(n) for n in [1, 2, 3]))
```

Salida esperada:

```text
Python / Obsidian
1,2,3
```

## Recuperación activa

> [!question]
> ¿Por qué ','.join([1, 2]) no funciona?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/library/stdtypes.html).
