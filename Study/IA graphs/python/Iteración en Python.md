---
title: Iteración en Python
type: moc
python_version: "3.14"
aliases: []
tags:
  - python
  - estudio
up:
  - "[[Python - Mapa del lenguaje|Python - Mapa del lenguaje]]"
prerequisites:
  - "[[Definición de funciones en Python|Definición de funciones en Python]]"
  - "[[list en Python|list en Python]]"
parts:
  - "[[Iterable en Python|Iterable en Python]]"
  - "[[Iterador en Python|Iterador en Python]]"
  - "[[enumerate en Python|enumerate en Python]]"
  - "[[zip en Python|zip en Python]]"
  - "[[Generadores en Python|Generadores en Python]]"
  - "[[Comprensiones en Python|Comprensiones en Python]]"
related: []
contrasts: []
---

# Iteración en Python

Forma parte de [[Python - Mapa del lenguaje|Python - Mapa del lenguaje]].

Antes de estudiar: [[Definición de funciones en Python|Definición de funciones en Python]] · [[list en Python|list en Python]].

Cómo recorrer y producir datos de forma progresiva.

Iterar significa obtener valores progresivamente. [[Iterable en Python|El iterable]] ofrece un recorrido y [[Iterador en Python|el iterador]] conserva su estado. [[Generadores en Python|Los generadores]] son una forma de implementar ese comportamiento.

[[Comprensiones en Python|Las comprensiones]] construyen colecciones a partir de recorridos; [[enumerate en Python|enumerate]] añade un contador y [[zip en Python|zip]] combina fuentes. Esta rama explica el mecanismo que [[Bucle for en Python|for]] usa desde control de flujo.

## Partes del concepto

- [[Iterable en Python|Iterable en Python]] — Un iterable puede proporcionar un iterador mediante iter(objeto).
- [[Iterador en Python|Iterador en Python]] — Un iterador conserva la posición de un recorrido y entrega el siguiente elemento con next.
- [[enumerate en Python|enumerate en Python]] — enumerate produce pares de contador y elemento durante un recorrido.
- [[zip en Python|zip en Python]] — zip agrupa elementos simultáneos de varios iterables en tuplas.
- [[Generadores en Python|Generadores en Python]] — Iteradores que conservan su ejecución entre entregas.
- [[Comprensiones en Python|Comprensiones en Python]] — Construcción declarativa de colecciones a partir de recorridos.

## Recuperación activa

> [!question]
> ¿Cómo se relacionan las partes de iteración en python y qué función cumple cada una?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/tutorial/datastructures.html).
