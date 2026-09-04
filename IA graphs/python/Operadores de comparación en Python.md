---
title: "Operadores de comparación en Python"
type: atomic
python_version: "3.14"
aliases: []
tags:
  - "python"
  - "estudio"
up:
  - "[[IA graphs/python/Expresiones y operadores en Python|Expresiones y operadores en Python]]"
prerequisites:
  - "[[IA graphs/python/bool en Python|bool en Python]]"
parts: []
related:
  - "[[IA graphs/python/Identidad e igualdad en Python|Identidad e igualdad en Python]]"
  - "[[IA graphs/python/Sobrecarga de operadores en Python|Sobrecarga de operadores en Python]]"
contrasts:
  - "[[IA graphs/python/Identidad e igualdad en Python|Identidad e igualdad en Python]]"
---

# Operadores de comparación en Python

Forma parte de [[IA graphs/python/Expresiones y operadores en Python|Expresiones y operadores en Python]].

Antes de estudiar: [[IA graphs/python/bool en Python|bool en Python]].

Las comparaciones expresan igualdad u orden entre valores.

`==`, `!=`, `<`, `<=`, `>` y `>=` consultan relaciones. Con tipos incorporados habituales producen bool. Las comparaciones se encadenan: `a < b < c` evalúa `b` una sola vez y evita la segunda comparación si la primera ya es falsa.

Comparar orden entre valores incompatibles como `3 < '4'` genera `TypeError`. [[IA graphs/python/Identidad e igualdad en Python|is]] comprueba identidad y no reemplaza `==`. Los tipos propios pueden personalizar comparaciones mediante [[IA graphs/python/Sobrecarga de operadores en Python|métodos especiales]].

## Ejemplo verificable

```python
edad = 20
print(18 <= edad < 65)
print([1, 2] == [1, 2])
print('10' == 10)
```

Salida esperada:

```text
True
True
False
```

## Para comparar

- [[IA graphs/python/Identidad e igualdad en Python|Identidad e igualdad en Python]]

## Recuperación activa

> [!question]
> ¿Qué evalúa una comparación encadenada?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/reference/expressions.html).
