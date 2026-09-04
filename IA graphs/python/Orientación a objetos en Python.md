---
title: "Orientación a objetos en Python"
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
  - "[[IA graphs/python/Clases en Python|Clases en Python]]"
  - "[[IA graphs/python/Instancias en Python|Instancias en Python]]"
  - "[[IA graphs/python/Atributos de instancia y de clase en Python|Atributos de instancia y de clase en Python]]"
  - "[[IA graphs/python/Métodos y self en Python|Métodos y self en Python]]"
  - "[[IA graphs/python/Inicialización con __init__ en Python|Inicialización con __init__ en Python]]"
  - "[[IA graphs/python/Encapsulación y convenciones de acceso en Python|Encapsulación y convenciones de acceso en Python]]"
  - "[[IA graphs/python/property en Python|property en Python]]"
  - "[[IA graphs/python/Composición en Python|Composición en Python]]"
  - "[[IA graphs/python/Polimorfismo y duck typing en Python|Polimorfismo y duck typing en Python]]"
  - "[[IA graphs/python/dataclasses en Python|dataclasses en Python]]"
  - "[[IA graphs/python/Herencia en Python|Herencia en Python]]"
related: []
contrasts: []
---

# Orientación a objetos en Python

Forma parte de [[IA graphs/python/Python - Mapa del lenguaje|Python - Mapa del lenguaje]].

Cómo definir tipos propios y distribuir responsabilidades.

Definir [[IA graphs/python/Clases en Python|clases]] permite crear tipos adaptados al problema. Las [[IA graphs/python/Instancias en Python|instancias]] mantienen [[IA graphs/python/Atributos de instancia y de clase en Python|estado]] y los [[IA graphs/python/Métodos y self en Python|métodos]] realizan operaciones sobre él.

[[IA graphs/python/Encapsulación y convenciones de acceso en Python|La encapsulación]] organiza una interfaz estable; [[IA graphs/python/Herencia en Python|la herencia]] especializa tipos; [[IA graphs/python/Composición en Python|la composición]] delega en colaboradores y [[IA graphs/python/Polimorfismo y duck typing en Python|el polimorfismo]] permite reemplazos compatibles. [[IA graphs/python/Protocolos del modelo de datos en Python|Los protocolos del modelo de datos]] conectan esos tipos con la sintaxis de Python.

## Partes del concepto

- [[IA graphs/python/Clases en Python|Clases en Python]] — Una clase define un tipo de objeto y reúne comportamiento y atributos comunes.
- [[IA graphs/python/Instancias en Python|Instancias en Python]] — Una instancia es un objeto concreto cuyo tipo es una clase.
- [[IA graphs/python/Atributos de instancia y de clase en Python|Atributos de instancia y de clase en Python]] — Los atributos de instancia guardan estado particular; los de clase pertenecen al objeto clase.
- [[IA graphs/python/Métodos y self en Python|Métodos y self en Python]] — Un método vinculado combina una función con la instancia que recibirá como primer argumento.
- [[IA graphs/python/Inicialización con __init__ en Python|Inicialización con __init__ en Python]] — __init__ configura una instancia que ya fue creada.
- [[IA graphs/python/Encapsulación y convenciones de acceso en Python|Encapsulación y convenciones de acceso en Python]] — Encapsular consiste en ofrecer operaciones coherentes y controlar cómo cambia el estado.
- [[IA graphs/python/property en Python|property en Python]] — property permite ejecutar código al leer, escribir o eliminar un atributo.
- [[IA graphs/python/Composición en Python|Composición en Python]] — La composición construye comportamiento usando otros objetos como colaboradores.
- [[IA graphs/python/Polimorfismo y duck typing en Python|Polimorfismo y duck typing en Python]] — El polimorfismo permite usar objetos diferentes mediante una operación común.
- [[IA graphs/python/dataclasses en Python|dataclasses en Python]] — El decorador dataclass genera operaciones repetitivas para clases que representan datos.
- [[IA graphs/python/Herencia en Python|Herencia en Python]] — Reutilización y especialización mediante clases base.

## Recuperación activa

> [!question]
> ¿Cómo se relacionan las partes de orientación a objetos en python y qué función cumple cada una?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/reference/index.html).
