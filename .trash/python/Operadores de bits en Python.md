---
title: Operadores de bits en Python
type: atomic
python_version: "3.14"
aliases: []
tags:
  - python
  - estudio
up:
  - "[[Expresiones y operadores en Python|Expresiones y operadores en Python]]"
prerequisites:
  - "[[int en Python|int en Python]]"
parts: []
related:
  - "[[Operadores lógicos y cortocircuito en Python|Operadores lógicos y cortocircuito en Python]]"
  - "[[Operaciones de conjuntos en Python|Operaciones de conjuntos en Python]]"
contrasts: []
---

# Operadores de bits en Python

Forma parte de [[Expresiones y operadores en Python|Expresiones y operadores en Python]].

Antes de estudiar: [[int en Python|int en Python]].

Los operadores de bits trabajan sobre la representación binaria de enteros.

`&`, `|` y `^` realizan intersección, unión y diferencia bit a bit; `~` invierte los bits; `<<` y `>>` desplazan. Para enteros, `~n == -n - 1`. Un desplazamiento negativo produce `ValueError`.

Se usan para máscaras y banderas numéricas. No reemplazan [[Operadores lógicos y cortocircuito en Python|and, or y not]]: estos últimos consultan verdad y cortocircuitan. Los conjuntos reutilizan algunos símbolos con otro significado definido por su tipo.

## Ejemplo verificable

```python
a, b = 0b1100, 0b1010
print(bin(a & b), bin(a | b), bin(a ^ b))
print(1 << 3, ~5)
```

Salida esperada:

```text
0b1000 0b1110 0b110
8 -6
```

## Recuperación activa

> [!question]
> ¿Por qué & no se comporta como and?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/reference/expressions.html).
