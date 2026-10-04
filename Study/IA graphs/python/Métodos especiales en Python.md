---
title: Métodos especiales en Python
type: concept
python_version: "3.14"
aliases: []
tags:
  - python
  - estudio
up:
  - "[[Protocolos del modelo de datos en Python|Protocolos del modelo de datos en Python]]"
prerequisites:
  - "[[Clases en Python|Clases en Python]]"
  - "[[Métodos y self en Python|Métodos y self en Python]]"
parts:
  - "[[Creación con __new__ en Python|Creación con __new__ en Python]]"
  - "[[Representación con repr y str en Python|Representación con repr y str en Python]]"
  - "[[Sobrecarga de operadores en Python|Sobrecarga de operadores en Python]]"
  - "[[NotImplemented en Python|NotImplemented en Python]]"
  - "[[Protocolo de contenedores en Python|Protocolo de contenedores en Python]]"
  - "[[Objetos invocables en Python|Objetos invocables en Python]]"
related: []
contrasts: []
---

# Métodos especiales en Python

Forma parte de [[Protocolos del modelo de datos en Python|Protocolos del modelo de datos en Python]].

Antes de estudiar: [[Clases en Python|Clases en Python]] · [[Métodos y self en Python|Métodos y self en Python]].

Puntos de integración entre objetos y operaciones del lenguaje.

Los nombres con doble guion bajo inicial y final corresponden a operaciones reconocidas por el intérprete. Su búsqueda implícita suele realizarse sobre el tipo, por lo que asignar un método especial solo a una instancia no siempre modifica la sintaxis asociada.

[[Creación con __new__ en Python|La creación]], [[Representación con repr y str en Python|la representación]], [[Sobrecarga de operadores en Python|los operadores]], [[Protocolo de contenedores en Python|los contenedores]] y [[Objetos invocables en Python|las llamadas]] tienen contratos distintos. [[NotImplemented en Python|NotImplemented]] permite rechazar una combinación de operandos sin impedir alternativas.

## Partes del concepto

- [[Creación con __new__ en Python|Creación con __new__ en Python]] — __new__ crea o elige el objeto que devolverá una llamada a una clase.
- [[Representación con repr y str en Python|Representación con repr y str en Python]] — __repr__ orienta la representación a inspección y __str__ a presentación.
- [[Sobrecarga de operadores en Python|Sobrecarga de operadores en Python]] — Una clase puede definir qué significan operaciones como + o == para sus instancias.
- [[NotImplemented en Python|NotImplemented en Python]] — NotImplemented señala que un método de operación no admite esa combinación de operandos.
- [[Protocolo de contenedores en Python|Protocolo de contenedores en Python]] — Los métodos de contenedor permiten que un tipo propio participe en len, índices y pertenencia.
- [[Objetos invocables en Python|Objetos invocables en Python]] — Un objeto es invocable cuando puede usarse con la sintaxis objeto(...).

## Recuperación activa

> [!question]
> ¿Cómo se relacionan las partes de métodos especiales en python y qué función cumple cada una?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/reference/datamodel.html).
