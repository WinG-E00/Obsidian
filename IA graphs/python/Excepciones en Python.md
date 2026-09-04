---
title: "Excepciones en Python"
type: moc
python_version: "3.14"
aliases: []
tags:
  - "python"
  - "estudio"
up:
  - "[[IA graphs/python/Python - Mapa del lenguaje|Python - Mapa del lenguaje]]"
prerequisites:
  - "[[IA graphs/python/Definición de funciones en Python|Definición de funciones en Python]]"
  - "[[IA graphs/python/Estructuras de control en Python|Estructuras de control en Python]]"
parts:
  - "[[IA graphs/python/Objeto excepción y propagación en Python|Objeto excepción y propagación en Python]]"
  - "[[IA graphs/python/try y except en Python|try y except en Python]]"
  - "[[IA graphs/python/raise y encadenamiento en Python|raise y encadenamiento en Python]]"
  - "[[IA graphs/python/Excepciones propias en Python|Excepciones propias en Python]]"
  - "[[IA graphs/python/assert en Python|assert en Python]]"
  - "[[IA graphs/python/ExceptionGroup y except estrella en Python|ExceptionGroup y except estrella en Python]]"
related: []
contrasts: []
---

# Excepciones en Python

Forma parte de [[IA graphs/python/Python - Mapa del lenguaje|Python - Mapa del lenguaje]].

Antes de estudiar: [[IA graphs/python/Definición de funciones en Python|Definición de funciones en Python]] · [[IA graphs/python/Estructuras de control en Python|Estructuras de control en Python]].

Cómo se representan, propagan y manejan los fallos.

Una [[IA graphs/python/Objeto excepción y propagación en Python|excepción]] transporta información de un fallo y se propaga por las llamadas. [[IA graphs/python/try y except en Python|try y except]] deciden qué recuperar; [[IA graphs/python/raise y encadenamiento en Python|raise]] comunica o vuelve a propagar el problema.

[[IA graphs/python/finally en Python|finally]] trata limpieza y [[IA graphs/python/Sentencia with en Python|with]] encapsula recursos. [[IA graphs/python/Excepciones propias en Python|Las excepciones propias]] expresan categorías del dominio. [[IA graphs/python/ExceptionGroup y except estrella en Python|Los grupos]] conservan varios errores independientes, como puede ocurrir con tareas concurrentes.

## Partes del concepto

- [[IA graphs/python/Objeto excepción y propagación en Python|Objeto excepción y propagación en Python]] — Una excepción es un objeto que interrumpe el flujo normal hasta encontrar un manejador compatible.
- [[IA graphs/python/try y except en Python|try y except en Python]] — try delimita instrucciones cuyos fallos pueden manejarse mediante except.
- [[IA graphs/python/raise y encadenamiento en Python|raise y encadenamiento en Python]] — raise inicia o vuelve a propagar una excepción.
- [[IA graphs/python/Excepciones propias en Python|Excepciones propias en Python]] — Una clase de excepción propia distingue fallos del dominio de otros errores.
- [[IA graphs/python/assert en Python|assert en Python]] — assert expresa una condición interna que debería cumplirse si el programa es correcto.
- [[IA graphs/python/ExceptionGroup y except estrella en Python|ExceptionGroup y except estrella en Python]] — ExceptionGroup reúne varios fallos independientes en una sola excepción estructurada.

## Recuperación activa

> [!question]
> ¿Cómo se relacionan las partes de excepciones en python y qué función cumple cada una?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/tutorial/errors.html).
