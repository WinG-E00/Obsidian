---
title: "Operadores aritméticos en Python"
type: atomic
python_version: "3.14"
aliases: []
tags:
  - "python"
  - "estudio"
up:
  - "[[IA graphs/python/Expresiones y operadores en Python|Expresiones y operadores en Python]]"
prerequisites:
  - "[[IA graphs/python/int en Python|int en Python]]"
  - "[[IA graphs/python/float en Python|float en Python]]"
parts: []
related:
  - "[[IA graphs/python/Precedencia y orden de evaluación en Python|Precedencia y orden de evaluación en Python]]"
  - "[[IA graphs/python/Sobrecarga de operadores en Python|Sobrecarga de operadores en Python]]"
contrasts: []
---

# Operadores aritméticos en Python

Forma parte de [[IA graphs/python/Expresiones y operadores en Python|Expresiones y operadores en Python]].

Antes de estudiar: [[IA graphs/python/int en Python|int en Python]] · [[IA graphs/python/float en Python|float en Python]].

Los operadores aritméticos combinan números para obtener nuevos valores.

`+`, `-`, `*`, `/`, `//`, `%` y `**` representan suma, resta, producto, división, cociente hacia menos infinito, resto y potencia. `/` entre enteros devuelve float; `//` no equivale a truncar hacia cero cuando intervienen negativos.

Para enteros con divisor no nulo, `a == (a // b) * b + a % b`. Dividir por cero provoca `ZeroDivisionError`. El significado depende del tipo: `+` también concatena ciertas secuencias. `@` es el operador reservado al producto matricial de tipos que lo implementen; las listas incorporadas no lo hacen.

## Ejemplo verificable

```python
print(7 / 2, 7 // 2, 7 % 2)
print(-7 // 2, -7 % 2)
print(2 ** 3)
```

Salida esperada:

```text
3.5 3 1
-4 1
8
```

## Recuperación activa

> [!question]
> ¿Por qué -7 // 2 da -4 y no -3?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/reference/expressions.html).
