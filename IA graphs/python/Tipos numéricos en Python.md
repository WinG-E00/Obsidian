---
title: "Tipos numéricos en Python"
type: concept
python_version: "3.14"
aliases: []
tags:
  - "python"
  - "estudio"
up:
  - "[[IA graphs/python/Tipos de datos en Python|Tipos de datos en Python]]"
prerequisites:
  - "[[IA graphs/python/Variables y asignación en Python|Variables y asignación en Python]]"
parts:
  - "[[IA graphs/python/int en Python|int en Python]]"
  - "[[IA graphs/python/float en Python|float en Python]]"
  - "[[IA graphs/python/complex en Python|complex en Python]]"
  - "[[IA graphs/python/bool en Python|bool en Python]]"
related: []
contrasts: []
---

# Tipos numéricos en Python

Forma parte de [[IA graphs/python/Tipos de datos en Python|Tipos de datos en Python]].

Antes de estudiar: [[IA graphs/python/Variables y asignación en Python|Variables y asignación en Python]].

Enteros, aproximaciones reales, complejos y valores lógicos.

Los tipos numéricos comparten operaciones, pero representan cosas distintas. [[IA graphs/python/int en Python|int]] conserva enteros, [[IA graphs/python/float en Python|float]] aproxima reales y [[IA graphs/python/complex en Python|complex]] añade componente imaginaria. [[IA graphs/python/bool en Python|bool]] representa dos valores lógicos y es un subtipo de int.

Para necesidades específicas existen Decimal y Fraction en la biblioteca estándar. No se asume que cambiar de tipo elimine automáticamente los problemas de precisión: hay que elegir representación y operaciones según el dominio.

## Partes del concepto

- [[IA graphs/python/int en Python|int en Python]] — int representa números enteros de precisión arbitraria, limitada por la memoria disponible.
- [[IA graphs/python/float en Python|float en Python]] — float representa números reales mediante una aproximación binaria de precisión finita.
- [[IA graphs/python/complex en Python|complex en Python]] — complex representa un número mediante una parte real y otra imaginaria.
- [[IA graphs/python/bool en Python|bool en Python]] — bool es el tipo que tiene exactamente dos valores: True y False.

## Recuperación activa

> [!question]
> ¿Cómo se relacionan las partes de tipos numéricos en python y qué función cumple cada una?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/library/stdtypes.html).
