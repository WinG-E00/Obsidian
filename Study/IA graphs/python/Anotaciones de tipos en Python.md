---
title: Anotaciones de tipos en Python
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
  - "[[Tipos de datos en Python|Tipos de datos en Python]]"
parts:
  - "[[Anotaciones de funciones y variables en Python|Anotaciones de funciones y variables en Python]]"
  - "[[Uniones y valores opcionales en Python|Uniones y valores opcionales en Python]]"
  - "[[Genéricos en Python|Genéricos en Python]]"
  - "[[Alias de tipos en Python|Alias de tipos en Python]]"
  - "[[Protocol en Python|Protocol en Python]]"
  - "[[TypedDict en Python|TypedDict en Python]]"
  - "[[Acotación de tipos y Any en Python|Acotación de tipos y Any en Python]]"
  - "[[Evaluación diferida de anotaciones en Python|Evaluación diferida de anotaciones en Python]]"
related: []
contrasts: []
---

# Anotaciones de tipos en Python

Forma parte de [[Python - Mapa del lenguaje|Python - Mapa del lenguaje]].

Antes de estudiar: [[Definición de funciones en Python|Definición de funciones en Python]] · [[Tipos de datos en Python|Tipos de datos en Python]].

Cómo expresar contratos verificables sin cambiar el tipado dinámico.

El tipado dinámico describe cómo ejecuta Python; las [[Anotaciones de funciones y variables en Python|anotaciones]] añaden información que otras herramientas pueden comprobar. No modifican automáticamente los datos ni imponen validaciones en cada llamada.

[[Uniones y valores opcionales en Python|Uniones]], [[Genéricos en Python|genéricos]], [[Protocol en Python|Protocol]] y [[TypedDict en Python|TypedDict]] expresan contratos diferentes. [[Acotación de tipos y Any en Python|La acotación]] permite razonar sobre ramas. [[Evaluación diferida de anotaciones en Python|La evaluación diferida]] conecta el tipado con las reglas de ejecución de Python 3.14.

## Partes del concepto

- [[Anotaciones de funciones y variables en Python|Anotaciones de funciones y variables en Python]] — Las anotaciones describen tipos esperados para lectores, herramientas y verificadores estáticos.
- [[Uniones y valores opcionales en Python|Uniones y valores opcionales en Python]] — Una unión expresa que un valor puede pertenecer a cualquiera de varios tipos.
- [[Genéricos en Python|Genéricos en Python]] — Un genérico conserva una relación de tipos sin fijarla a un único tipo concreto.
- [[Alias de tipos en Python|Alias de tipos en Python]] — Un alias da un nombre reutilizable a una expresión de tipo.
- [[Protocol en Python|Protocol en Python]] — Protocol describe una interfaz estructural que un objeto puede satisfacer sin heredar de ella.
- [[TypedDict en Python|TypedDict en Python]] — TypedDict describe las claves y tipos esperados de un diccionario para análisis estático.
- [[Acotación de tipos y Any en Python|Acotación de tipos y Any en Python]] — Acotar un tipo reduce las posibilidades que considera un analizador después de una comprobación.
- [[Evaluación diferida de anotaciones en Python|Evaluación diferida de anotaciones en Python]] — En Python 3.14, muchas anotaciones se evalúan cuando se solicitan, en vez de durante la definición.

## Recuperación activa

> [!question]
> ¿Cómo se relacionan las partes de anotaciones de tipos en python y qué función cumple cada una?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/library/typing.html).
