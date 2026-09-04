---
title: "Anotaciones de tipos en Python"
type: moc
python_version: "3.14"
aliases: []
tags:
  - "python"
  - "estudio"
up:
  - "[[IA graphs/python/Python - Mapa del lenguaje|Python - Mapa del lenguaje]]"
prerequisites: []
parts:
  - "[[IA graphs/python/Anotaciones de funciones y variables en Python|Anotaciones de funciones y variables en Python]]"
  - "[[IA graphs/python/Uniones y valores opcionales en Python|Uniones y valores opcionales en Python]]"
  - "[[IA graphs/python/Genéricos en Python|Genéricos en Python]]"
  - "[[IA graphs/python/Alias de tipos en Python|Alias de tipos en Python]]"
  - "[[IA graphs/python/Protocol en Python|Protocol en Python]]"
  - "[[IA graphs/python/TypedDict en Python|TypedDict en Python]]"
  - "[[IA graphs/python/Acotación de tipos y Any en Python|Acotación de tipos y Any en Python]]"
  - "[[IA graphs/python/Evaluación diferida de anotaciones en Python|Evaluación diferida de anotaciones en Python]]"
related: []
contrasts: []
---

# Anotaciones de tipos en Python

Forma parte de [[IA graphs/python/Python - Mapa del lenguaje|Python - Mapa del lenguaje]].

Cómo expresar contratos verificables sin cambiar el tipado dinámico.

El tipado dinámico describe cómo ejecuta Python; las [[IA graphs/python/Anotaciones de funciones y variables en Python|anotaciones]] añaden información que otras herramientas pueden comprobar. No modifican automáticamente los datos ni imponen validaciones en cada llamada.

[[IA graphs/python/Uniones y valores opcionales en Python|Uniones]], [[IA graphs/python/Genéricos en Python|genéricos]], [[IA graphs/python/Protocol en Python|Protocol]] y [[IA graphs/python/TypedDict en Python|TypedDict]] expresan contratos diferentes. [[IA graphs/python/Acotación de tipos y Any en Python|La acotación]] permite razonar sobre ramas. [[IA graphs/python/Evaluación diferida de anotaciones en Python|La evaluación diferida]] conecta el tipado con las reglas de ejecución de Python 3.14.

## Partes del concepto

- [[IA graphs/python/Anotaciones de funciones y variables en Python|Anotaciones de funciones y variables en Python]] — Las anotaciones describen tipos esperados para lectores, herramientas y verificadores estáticos.
- [[IA graphs/python/Uniones y valores opcionales en Python|Uniones y valores opcionales en Python]] — Una unión expresa que un valor puede pertenecer a cualquiera de varios tipos.
- [[IA graphs/python/Genéricos en Python|Genéricos en Python]] — Un genérico conserva una relación de tipos sin fijarla a un único tipo concreto.
- [[IA graphs/python/Alias de tipos en Python|Alias de tipos en Python]] — Un alias da un nombre reutilizable a una expresión de tipo.
- [[IA graphs/python/Protocol en Python|Protocol en Python]] — Protocol describe una interfaz estructural que un objeto puede satisfacer sin heredar de ella.
- [[IA graphs/python/TypedDict en Python|TypedDict en Python]] — TypedDict describe las claves y tipos esperados de un diccionario para análisis estático.
- [[IA graphs/python/Acotación de tipos y Any en Python|Acotación de tipos y Any en Python]] — Acotar un tipo reduce las posibilidades que considera un analizador después de una comprobación.
- [[IA graphs/python/Evaluación diferida de anotaciones en Python|Evaluación diferida de anotaciones en Python]] — En Python 3.14, muchas anotaciones se evalúan cuando se solicitan, en vez de durante la definición.

## Recuperación activa

> [!question]
> ¿Cómo se relacionan las partes de anotaciones de tipos en python y qué función cumple cada una?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/reference/index.html).
