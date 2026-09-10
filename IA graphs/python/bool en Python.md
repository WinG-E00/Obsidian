---
title: "bool en Python"
type: api-object
python_version: "3.14"
aliases:
  - "Boolean de Python"
tags:
  - "python"
  - "estudio"
  - "api"
up:
  - "[[IA graphs/python/Tipos numéricos en Python|Tipos numéricos en Python]]"
prerequisites:
  - "[[IA graphs/python/int en Python|int en Python]]"
parts:
  - "[[IA graphs/python/True en Python|True en Python]]"
  - "[[IA graphs/python/False en Python|False en Python]]"
related:
  - "[[IA graphs/python/Evaluación booleana en Python|Evaluación booleana en Python]]"
  - "[[IA graphs/python/Condicional if en Python|Condicional if en Python]]"
contrasts: []
---

# bool en Python

Forma parte de [[IA graphs/python/Tipos numéricos en Python|Tipos numéricos en Python]].

Antes de estudiar: [[IA graphs/python/int en Python|int en Python]].

bool es el tipo que tiene exactamente dos valores: True y False.

Es un subtipo de [[IA graphs/python/int en Python|int]]: `True == 1` y `False == 0`, aunque sus representaciones comunican una decisión lógica. No se puede heredar de `bool`.
<!--SR:!2026-09-11,1,230-->

`bool(objeto=False, /) -> bool` consulta [[IA graphs/python/Evaluación booleana en Python|el valor de verdad]] del objeto, sin mutarlo. Hereda la interfaz numérica de `int`; no necesita métodos propios para representar sus dos valores. Sus propiedades `real`, `imag`, `numerator` y `denominator` son de solo lectura y siguen la interfaz entera.

El literal `True` representa el valor verdadero; `False`, el falso. Convertir texto no interpreta su significado en español o inglés: `bool('False')` es verdadero porque el texto no está vacío.

## Partes del concepto

- [[IA graphs/python/True en Python|True en Python]] — True es el valor booleano que representa una condición verdadera.
- [[IA graphs/python/False en Python|False en Python]] — False es el valor booleano que representa una condición falsa.

## Ejemplo verificable

```python
print(bool(0), bool(5))
print(bool('False'))
print(isinstance(True, int))
```

Salida esperada:

```text
False True
True
True
```

## Recuperación activa

> [!question]
> ¿Por qué bool('False') devuelve True?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/library/functions.html).
