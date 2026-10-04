---
title: Excepciones en Python
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
  - "[[Estructuras de control en Python|Estructuras de control en Python]]"
parts:
  - "[[Objeto excepción y propagación en Python|Objeto excepción y propagación en Python]]"
  - "[[try y except en Python|try y except en Python]]"
  - "[[raise y encadenamiento en Python|raise y encadenamiento en Python]]"
  - "[[Excepciones propias en Python|Excepciones propias en Python]]"
  - "[[assert en Python|assert en Python]]"
  - "[[ExceptionGroup y except estrella en Python|ExceptionGroup y except estrella en Python]]"
related: []
contrasts: []
---

# Excepciones en Python

Forma parte de [[Python - Mapa del lenguaje|Python - Mapa del lenguaje]].

Antes de estudiar: [[Definición de funciones en Python|Definición de funciones en Python]] · [[Estructuras de control en Python|Estructuras de control en Python]].

Cómo se representan, propagan y manejan los fallos.

Una [[Objeto excepción y propagación en Python|excepción]] transporta información de un fallo y se propaga por las llamadas. [[try y except en Python|try y except]] deciden qué recuperar; [[raise y encadenamiento en Python|raise]] comunica o vuelve a propagar el problema.

[[finally en Python|finally]] trata limpieza y [[Sentencia with en Python|with]] encapsula recursos. [[Excepciones propias en Python|Las excepciones propias]] expresan categorías del dominio. [[ExceptionGroup y except estrella en Python|Los grupos]] conservan varios errores independientes, como puede ocurrir con tareas concurrentes.

## Partes del concepto

- [[Objeto excepción y propagación en Python|Objeto excepción y propagación en Python]] — Una excepción es un objeto que interrumpe el flujo normal hasta encontrar un manejador compatible.
- [[try y except en Python|try y except en Python]] — try delimita instrucciones cuyos fallos pueden manejarse mediante except.
- [[raise y encadenamiento en Python|raise y encadenamiento en Python]] — raise inicia o vuelve a propagar una excepción.
- [[Excepciones propias en Python|Excepciones propias en Python]] — Una clase de excepción propia distingue fallos del dominio de otros errores.
- [[assert en Python|assert en Python]] — assert expresa una condición interna que debería cumplirse si el programa es correcto.
- [[ExceptionGroup y except estrella en Python|ExceptionGroup y except estrella en Python]] — ExceptionGroup reúne varios fallos independientes en una sola excepción estructurada.

## Recuperación activa

> [!question]
> ¿Cómo se relacionan las partes de excepciones en python y qué función cumple cada una?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/tutorial/errors.html).
