---
title: Orientación a objetos en Python
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
  - "[[Modelo de objetos en Python|Modelo de objetos en Python]]"
parts:
  - "[[Clases en Python|Clases en Python]]"
  - "[[Instancias en Python|Instancias en Python]]"
  - "[[Atributos de instancia y de clase en Python|Atributos de instancia y de clase en Python]]"
  - "[[Métodos y self en Python|Métodos y self en Python]]"
  - "[[Inicialización con __init__ en Python|Inicialización con __init__ en Python]]"
  - "[[Encapsulación y convenciones de acceso en Python|Encapsulación y convenciones de acceso en Python]]"
  - "[[property en Python|property en Python]]"
  - "[[Composición en Python|Composición en Python]]"
  - "[[Polimorfismo y duck typing en Python|Polimorfismo y duck typing en Python]]"
  - "[[dataclasses en Python|dataclasses en Python]]"
  - "[[Herencia en Python|Herencia en Python]]"
related: []
contrasts: []
---

# Orientación a objetos en Python

Forma parte de [[Python - Mapa del lenguaje|Python - Mapa del lenguaje]].

Antes de estudiar: [[Definición de funciones en Python|Definición de funciones en Python]] · [[Modelo de objetos en Python|Modelo de objetos en Python]].

Cómo definir tipos propios y distribuir responsabilidades.

Definir [[Clases en Python|clases]] permite crear tipos adaptados al problema. Las [[Instancias en Python|instancias]] mantienen [[Atributos de instancia y de clase en Python|estado]] y los [[Métodos y self en Python|métodos]] realizan operaciones sobre él.

[[Encapsulación y convenciones de acceso en Python|La encapsulación]] organiza una interfaz estable; [[Herencia en Python|la herencia]] especializa tipos; [[Composición en Python|la composición]] delega en colaboradores y [[Polimorfismo y duck typing en Python|el polimorfismo]] permite reemplazos compatibles. [[Protocolos del modelo de datos en Python|Los protocolos del modelo de datos]] conectan esos tipos con la sintaxis de Python.

## Partes del concepto

- [[Clases en Python|Clases en Python]] — Una clase define un tipo de objeto y reúne comportamiento y atributos comunes.
- [[Instancias en Python|Instancias en Python]] — Una instancia es un objeto concreto cuyo tipo es una clase.
- [[Atributos de instancia y de clase en Python|Atributos de instancia y de clase en Python]] — Los atributos de instancia guardan estado particular; los de clase pertenecen al objeto clase.
- [[Métodos y self en Python|Métodos y self en Python]] — Un método vinculado combina una función con la instancia que recibirá como primer argumento.
- [[Inicialización con __init__ en Python|Inicialización con __init__ en Python]] — __init__ configura una instancia que ya fue creada.
- [[Encapsulación y convenciones de acceso en Python|Encapsulación y convenciones de acceso en Python]] — Encapsular consiste en ofrecer operaciones coherentes y controlar cómo cambia el estado.
- [[property en Python|property en Python]] — property permite ejecutar código al leer, escribir o eliminar un atributo.
- [[Composición en Python|Composición en Python]] — La composición construye comportamiento usando otros objetos como colaboradores.
- [[Polimorfismo y duck typing en Python|Polimorfismo y duck typing en Python]] — El polimorfismo permite usar objetos diferentes mediante una operación común.
- [[dataclasses en Python|dataclasses en Python]] — El decorador dataclass genera operaciones repetitivas para clases que representan datos.
- [[Herencia en Python|Herencia en Python]] — Reutilización y especialización mediante clases base.

## Recuperación activa

> [!question]
> ¿Cómo se relacionan las partes de orientación a objetos en python y qué función cumple cada una?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/tutorial/classes.html).
