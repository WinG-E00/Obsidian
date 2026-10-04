---
title: Secuencias en Python
type: concept
python_version: "3.14"
aliases: []
tags:
  - python
  - estudio
up:
  - "[[Tipos de datos en Python|Tipos de datos en Python]]"
prerequisites:
  - "[[Mutabilidad en Python|Mutabilidad en Python]]"
parts:
  - "[[Indexación en Python|Indexación en Python]]"
  - "[[Slicing en Python|Slicing en Python]]"
  - "[[tuple en Python|tuple en Python]]"
  - "[[range en Python|range en Python]]"
  - "[[str en Python|str en Python]]"
  - "[[list en Python|list en Python]]"
related: []
contrasts: []
---

# Secuencias en Python

Forma parte de [[Tipos de datos en Python|Tipos de datos en Python]].

Antes de estudiar: [[Mutabilidad en Python|Mutabilidad en Python]].

Contenedores ordenados que se consultan por posición.

Una secuencia ordena elementos por posición. [[Indexación en Python|La indexación]] obtiene uno y [[Slicing en Python|el slicing]] selecciona un tramo. El orden de una secuencia no significa que sus elementos estén ordenados de menor a mayor.

[[list en Python|list]] permite cambiar su estructura, [[tuple en Python|tuple]] conserva sus referencias y [[str en Python|str]] representa texto. [[range en Python|range]] representa una progresión de enteros sin materializar cada valor. [[Datos binarios en Python|bytes y bytearray]] también son secuencias, agrupadas aparte por su uso binario.

## Partes del concepto

- [[Indexación en Python|Indexación en Python]] — La indexación selecciona un elemento de una secuencia por su posición.
- [[Slicing en Python|Slicing en Python]] — Un slice describe un recorrido parcial mediante inicio, fin excluido y paso.
- [[tuple en Python|tuple en Python]] — tuple es una secuencia inmutable de referencias a objetos.
- [[range en Python|range en Python]] — range representa una secuencia inmutable de enteros calculada a partir de límites.
- [[str en Python|str en Python]] — str es una secuencia inmutable de puntos de código Unicode.
- [[list en Python|list en Python]] — list es una secuencia mutable de referencias a objetos.

## Recuperación activa

> [!question]
> ¿Cómo se relacionan las partes de secuencias en python y qué función cumple cada una?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/library/stdtypes.html).
