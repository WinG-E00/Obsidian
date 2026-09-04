---
title: "Estructuras de control en Python"
type: moc
python_version: "3.14"
aliases: []
tags:
  - "python"
  - "estudio"
up:
  - "[[IA graphs/python/Python - Mapa del lenguaje|Python - Mapa del lenguaje]]"
prerequisites:
  - "[[IA graphs/python/bool en Python|bool en Python]]"
  - "[[IA graphs/python/Expresiones y operadores en Python|Expresiones y operadores en Python]]"
parts:
  - "[[IA graphs/python/Evaluación booleana en Python|Evaluación booleana en Python]]"
  - "[[IA graphs/python/Condicional if en Python|Condicional if en Python]]"
  - "[[IA graphs/python/Bucle for en Python|Bucle for en Python]]"
  - "[[IA graphs/python/Bucle while en Python|Bucle while en Python]]"
  - "[[IA graphs/python/break en Python|break en Python]]"
  - "[[IA graphs/python/continue en Python|continue en Python]]"
  - "[[IA graphs/python/else en bucles en Python|else en bucles en Python]]"
  - "[[IA graphs/python/pass en Python|pass en Python]]"
  - "[[IA graphs/python/Coincidencia de patrones con match en Python|Coincidencia de patrones con match en Python]]"
related: []
contrasts: []
---

# Estructuras de control en Python

Forma parte de [[IA graphs/python/Python - Mapa del lenguaje|Python - Mapa del lenguaje]].

Antes de estudiar: [[IA graphs/python/bool en Python|bool en Python]] · [[IA graphs/python/Expresiones y operadores en Python|Expresiones y operadores en Python]].

Cómo elegir y repetir instrucciones.

Las instrucciones pueden ejecutarse en secuencia, elegir una rama o repetir un bloque. [[IA graphs/python/Condicional if en Python|if]] decide a partir de [[IA graphs/python/Evaluación booleana en Python|la verdad de un objeto]]; [[IA graphs/python/Bucle for en Python|for]] obtiene elementos; [[IA graphs/python/Bucle while en Python|while]] repite mientras una condición siga cumpliéndose.

[[IA graphs/python/break en Python|break]], [[IA graphs/python/continue en Python|continue]] y [[IA graphs/python/else en bucles en Python|else en bucles]] delimitan cómo termina un recorrido. [[IA graphs/python/Coincidencia de patrones con match en Python|match]] permite decisiones basadas en estructura. [[IA graphs/python/Excepciones en Python|Las excepciones]] también cambian el flujo, pero modelan fallos y recuperación.

## Partes del concepto

- [[IA graphs/python/Evaluación booleana en Python|Evaluación booleana en Python]] — Python permite usar objetos de muchos tipos como condiciones.
- [[IA graphs/python/Condicional if en Python|Condicional if en Python]] — if selecciona un bloque según el valor de verdad de una condición.
- [[IA graphs/python/Bucle for en Python|Bucle for en Python]] — for obtiene elementos de un iterable hasta agotar su iterador.
- [[IA graphs/python/Bucle while en Python|Bucle while en Python]] — while repite un bloque mientras una condición siga siendo verdadera.
- [[IA graphs/python/break en Python|break en Python]] — break termina inmediatamente el bucle más interno que lo contiene.
- [[IA graphs/python/continue en Python|continue en Python]] — continue omite lo que resta de la vuelta actual y pasa a la siguiente.
- [[IA graphs/python/else en bucles en Python|else en bucles en Python]] — El else de un bucle se ejecuta al terminar normalmente sin break.
- [[IA graphs/python/pass en Python|pass en Python]] — pass es una sentencia que no realiza ninguna acción.
- [[IA graphs/python/Coincidencia de patrones con match en Python|Coincidencia de patrones con match en Python]] — match selecciona una rama comprobando la estructura de un valor.

## Recuperación activa

> [!question]
> ¿Cómo se relacionan las partes de estructuras de control en python y qué función cumple cada una?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/reference/compound_stmts.html).
