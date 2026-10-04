---
title: Módulos y paquetes en Python
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
  - "[[Ámbitos de nombres en Python|Ámbitos de nombres en Python]]"
parts:
  - "[[Módulo en Python|Módulo en Python]]"
  - "[[import en Python|import en Python]]"
  - "[[Paquetes en Python|Paquetes en Python]]"
  - "[[Punto de entrada y __main__ en Python|Punto de entrada y __main__ en Python]]"
  - "[[Sistema de importación en Python|Sistema de importación en Python]]"
related: []
contrasts: []
---

# Módulos y paquetes en Python

Forma parte de [[Python - Mapa del lenguaje|Python - Mapa del lenguaje]].

Antes de estudiar: [[Definición de funciones en Python|Definición de funciones en Python]] · [[Ámbitos de nombres en Python|Ámbitos de nombres en Python]].

Cómo se organiza y se carga código entre archivos.

El código se divide en [[Módulo en Python|módulos]] con espacios de nombres propios. [[Paquetes en Python|Los paquetes]] organizan esos módulos y [[import en Python|import]] vincula nombres utilizables.

[[Punto de entrada y __main__ en Python|El punto de entrada]] separa iniciar un programa de importar sus operaciones. [[Sistema de importación en Python|El sistema de importación]] explica caché, búsqueda y problemas de inicialización circular. La instalación de distribuciones pertenece a [[Dependencias y pip en Python|las herramientas del proyecto]].

## Partes del concepto

- [[Módulo en Python|Módulo en Python]] — Un módulo es una unidad de código con su propio espacio de nombres.
- [[import en Python|import en Python]] — import carga o reutiliza un módulo y vincula nombres en el ámbito actual.
- [[Paquetes en Python|Paquetes en Python]] — Un paquete organiza módulos bajo nombres jerárquicos.
- [[Punto de entrada y __main__ en Python|Punto de entrada y __main__ en Python]] — El módulo que inicia una ejecución recibe el nombre __main__.
- [[Sistema de importación en Python|Sistema de importación en Python]] — El sistema de importación localiza módulos, crea sus objetos y ejecuta su inicialización.

## Recuperación activa

> [!question]
> ¿Cómo se relacionan las partes de módulos y paquetes en python y qué función cumple cada una?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/reference/import.html).
