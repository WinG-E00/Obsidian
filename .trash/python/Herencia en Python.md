---
title: Herencia en Python
type: concept
python_version: "3.14"
aliases: []
tags:
  - python
  - estudio
up:
  - "[[Orientación a objetos en Python|Orientación a objetos en Python]]"
prerequisites:
  - "[[Clases en Python|Clases en Python]]"
  - "[[Métodos y self en Python|Métodos y self en Python]]"
parts:
  - "[[Subclases y sobrescritura en Python|Subclases y sobrescritura en Python]]"
  - "[[super y orden de resolución en Python|super y orden de resolución en Python]]"
  - "[[Clases abstractas en Python|Clases abstractas en Python]]"
related: []
contrasts: []
---

# Herencia en Python

Forma parte de [[Orientación a objetos en Python|Orientación a objetos en Python]].

Antes de estudiar: [[Clases en Python|Clases en Python]] · [[Métodos y self en Python|Métodos y self en Python]].

Reutilización y especialización mediante clases base.

La herencia establece que un tipo especializa a otro y participa en su relación de instancias. [[Subclases y sobrescritura en Python|Las subclases]] pueden sobrescribir operaciones.

[[super y orden de resolución en Python|super y el MRO]] coordinan la búsqueda de métodos, especialmente con múltiples bases. [[Clases abstractas en Python|Las clases abstractas]] expresan operaciones pendientes dentro de una jerarquía. Si la relación real es «usa otro objeto», estudiá [[Composición en Python|composición]].

## Partes del concepto

- [[Subclases y sobrescritura en Python|Subclases y sobrescritura en Python]] — Una subclase hereda comportamiento y puede reemplazar métodos de sus clases base.
- [[super y orden de resolución en Python|super y orden de resolución en Python]] — super continúa la búsqueda de métodos según el orden de resolución de la clase.
- [[Clases abstractas en Python|Clases abstractas en Python]] — Una clase abstracta puede exigir que las subclases concreten ciertas operaciones.

## Recuperación activa

> [!question]
> ¿Cómo se relacionan las partes de herencia en python y qué función cumple cada una?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/tutorial/classes.html).
