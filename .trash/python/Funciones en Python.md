---
title: Funciones en Python
type: moc
python_version: "3.14"
aliases: []
tags:
  - python
  - estudio
up:
  - "[[Python - Mapa del lenguaje|Python - Mapa del lenguaje]]"
prerequisites:
  - "[[Variables y asignación en Python|Variables y asignación en Python]]"
  - "[[Estructuras de control en Python|Estructuras de control en Python]]"
parts:
  - "[[Definición de funciones en Python|Definición de funciones en Python]]"
  - "[[Retorno de funciones en Python|Retorno de funciones en Python]]"
  - "[[Expresiones lambda en Python|Expresiones lambda en Python]]"
  - "[[Decoradores en Python|Decoradores en Python]]"
  - "[[Recursión en Python|Recursión en Python]]"
  - "[[Parámetros y argumentos en Python|Parámetros y argumentos en Python]]"
  - "[[Ámbitos de nombres en Python|Ámbitos de nombres en Python]]"
related: []
contrasts: []
---

# Funciones en Python

Forma parte de [[Python - Mapa del lenguaje|Python - Mapa del lenguaje]].

Antes de estudiar: [[Variables y asignación en Python|Variables y asignación en Python]] · [[Estructuras de control en Python|Estructuras de control en Python]].

Cómo definir operaciones reutilizables y resolver nombres.

Una función reúne una operación reutilizable y le da un contrato. [[Definición de funciones en Python|def]] crea la función; [[Parámetros y argumentos en Python|los parámetros y argumentos]] determinan cómo llamarla; [[Retorno de funciones en Python|return]] entrega su resultado.

[[Ámbitos de nombres en Python|Los ámbitos]] explican qué nombres ve la función. [[Closures en Python|Closures]] y [[Decoradores en Python|decoradores]] aprovechan que las funciones son objetos. [[Generadores en Python|Los generadores]] extienden ese mecanismo con ejecución suspendida.

## Partes del concepto

- [[Definición de funciones en Python|Definición de funciones en Python]] — def crea un objeto función y lo vincula con un nombre.
- [[Retorno de funciones en Python|Retorno de funciones en Python]] — return termina una llamada de función y entrega un objeto al código que la invocó.
- [[Expresiones lambda en Python|Expresiones lambda en Python]] — lambda crea una función cuyo cuerpo es una sola expresión.
- [[Decoradores en Python|Decoradores en Python]] — Un decorador recibe una función o clase y produce el objeto que quedará vinculado a su nombre.
- [[Recursión en Python|Recursión en Python]] — Una función recursiva resuelve un problema mediante llamadas al mismo procedimiento sobre casos menores.
- [[Parámetros y argumentos en Python|Parámetros y argumentos en Python]] — El contrato entre la definición y la llamada de una función.
- [[Ámbitos de nombres en Python|Ámbitos de nombres en Python]] — Las reglas para localizar y vincular los nombres.

## Recuperación activa

> [!question]
> ¿Cómo se relacionan las partes de funciones en python y qué función cumple cada una?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/tutorial/controlflow.html).
