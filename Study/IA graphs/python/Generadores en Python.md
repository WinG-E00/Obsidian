---
title: Generadores en Python
type: concept
python_version: "3.14"
aliases: []
tags:
  - python
  - estudio
up:
  - "[[Iteración en Python|Iteración en Python]]"
prerequisites:
  - "[[Iterador en Python|Iterador en Python]]"
  - "[[Definición de funciones en Python|Definición de funciones en Python]]"
parts:
  - "[[yield en Python|yield en Python]]"
  - "[[yield from en Python|yield from en Python]]"
  - "[[Expresiones generadoras en Python|Expresiones generadoras en Python]]"
related: []
contrasts: []
---

# Generadores en Python

Forma parte de [[Iteración en Python|Iteración en Python]].

Antes de estudiar: [[Iterador en Python|Iterador en Python]] · [[Definición de funciones en Python|Definición de funciones en Python]].

Iteradores que conservan su ejecución entre entregas.

Un generador es un iterador cuyo estado incluye una ejecución suspendida. Se consume progresivamente y no es una colección que se reinicie al recorrerla.

[[yield en Python|yield]] entrega y suspende; [[yield from en Python|yield from]] delega en otro recorrido y [[Expresiones generadoras en Python|una expresión generadora]] ofrece la forma compacta. Su cierre y finalización tienen contratos distintos del retorno de una función ordinaria.

## Partes del concepto

- [[yield en Python|yield en Python]] — yield entrega un valor y suspende la ejecución de una función generadora.
- [[yield from en Python|yield from en Python]] — yield from delega la producción de elementos a otro iterable.
- [[Expresiones generadoras en Python|Expresiones generadoras en Python]] — Una expresión generadora produce valores de forma perezosa mediante una sintaxis compacta.

## Recuperación activa

> [!question]
> ¿Cómo se relacionan las partes de generadores en python y qué función cumple cada una?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/reference/expressions.html).
