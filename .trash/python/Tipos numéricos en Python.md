---
title: Tipos numéricos en Python
type: concept
python_version: "3.14"
aliases: []
tags:
  - python
  - estudio
up:
  - "[[Tipos de datos en Python|Tipos de datos en Python]]"
prerequisites:
  - "[[Variables y asignación en Python|Variables y asignación en Python]]"
parts:
  - "[[int en Python|int en Python]]"
  - "[[float en Python|float en Python]]"
  - "[[complex en Python|complex en Python]]"
  - "[[bool en Python|bool en Python]]"
related: []
contrasts: []
---

# Tipos numéricos en Python

Forma parte de [[Tipos de datos en Python|Tipos de datos en Python]].

Antes de estudiar: [[Variables y asignación en Python|Variables y asignación en Python]].

Enteros, aproximaciones reales, complejos y valores lógicos.

Los tipos numéricos comparten operaciones, pero representan cosas distintas. [[int en Python|int]] conserva enteros, [[float en Python|float]] aproxima reales y [[complex en Python|complex]] añade componente imaginaria. [[bool en Python|bool]] representa dos valores lógicos y es un subtipo de int.

Para necesidades específicas existen Decimal y Fraction en la biblioteca estándar. No se asume que cambiar de tipo elimine automáticamente los problemas de precisión: hay que elegir representación y operaciones según el dominio.

## Partes del concepto

- [[int en Python|int en Python]] — int representa números enteros de precisión arbitraria, limitada por la memoria disponible.
- [[float en Python|float en Python]] — float representa números reales mediante una aproximación binaria de precisión finita.
- [[complex en Python|complex en Python]] — complex representa un número mediante una parte real y otra imaginaria.
- [[bool en Python|bool en Python]] — bool es el tipo que tiene exactamente dos valores: True y False.

## Recuperación activa

> [!question]
> ¿Cómo se relacionan las partes de tipos numéricos en python y qué función cumple cada una?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/library/stdtypes.html).
