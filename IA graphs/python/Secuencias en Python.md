---
title: "Secuencias en Python"
type: concept
python_version: "3.14"
aliases: []
tags:
  - "python"
  - "estudio"
up:
  - "[[IA graphs/python/Tipos de datos en Python|Tipos de datos en Python]]"
prerequisites:
  - "[[IA graphs/python/Mutabilidad en Python|Mutabilidad en Python]]"
parts:
  - "[[IA graphs/python/Indexación en Python|Indexación en Python]]"
  - "[[IA graphs/python/Slicing en Python|Slicing en Python]]"
  - "[[IA graphs/python/tuple en Python|tuple en Python]]"
  - "[[IA graphs/python/range en Python|range en Python]]"
  - "[[IA graphs/python/str en Python|str en Python]]"
  - "[[IA graphs/python/list en Python|list en Python]]"
related: []
contrasts: []
---

# Secuencias en Python

Forma parte de [[IA graphs/python/Tipos de datos en Python|Tipos de datos en Python]].

Antes de estudiar: [[IA graphs/python/Mutabilidad en Python|Mutabilidad en Python]].

Contenedores ordenados que se consultan por posición.

Una secuencia ordena elementos por posición. [[IA graphs/python/Indexación en Python|La indexación]] obtiene uno y [[IA graphs/python/Slicing en Python|el slicing]] selecciona un tramo. El orden de una secuencia no significa que sus elementos estén ordenados de menor a mayor.

[[IA graphs/python/list en Python|list]] permite cambiar su estructura, [[IA graphs/python/tuple en Python|tuple]] conserva sus referencias y [[IA graphs/python/str en Python|str]] representa texto. [[IA graphs/python/range en Python|range]] representa una progresión de enteros sin materializar cada valor. [[IA graphs/python/Datos binarios en Python|bytes y bytearray]] también son secuencias, agrupadas aparte por su uso binario.

## Partes del concepto

- [[IA graphs/python/Indexación en Python|Indexación en Python]] — La indexación selecciona un elemento de una secuencia por su posición.
- [[IA graphs/python/Slicing en Python|Slicing en Python]] — Un slice describe un recorrido parcial mediante inicio, fin excluido y paso.
- [[IA graphs/python/tuple en Python|tuple en Python]] — tuple es una secuencia inmutable de referencias a objetos.
- [[IA graphs/python/range en Python|range en Python]] — range representa una secuencia inmutable de enteros calculada a partir de límites.
- [[IA graphs/python/str en Python|str en Python]] — str es una secuencia inmutable de puntos de código Unicode.
- [[IA graphs/python/list en Python|list en Python]] — list es una secuencia mutable de referencias a objetos.

## Recuperación activa

> [!question]
> ¿Cómo se relacionan las partes de secuencias en python y qué función cumple cada una?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/library/stdtypes.html).
