---
title: "Módulos y paquetes en Python"
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
  - "[[IA graphs/python/Ámbitos de nombres en Python|Ámbitos de nombres en Python]]"
parts:
  - "[[IA graphs/python/Módulo en Python|Módulo en Python]]"
  - "[[IA graphs/python/import en Python|import en Python]]"
  - "[[IA graphs/python/Paquetes en Python|Paquetes en Python]]"
  - "[[IA graphs/python/Punto de entrada y __main__ en Python|Punto de entrada y __main__ en Python]]"
  - "[[IA graphs/python/Sistema de importación en Python|Sistema de importación en Python]]"
related: []
contrasts: []
---

# Módulos y paquetes en Python

Forma parte de [[IA graphs/python/Python - Mapa del lenguaje|Python - Mapa del lenguaje]].

Antes de estudiar: [[IA graphs/python/Definición de funciones en Python|Definición de funciones en Python]] · [[IA graphs/python/Ámbitos de nombres en Python|Ámbitos de nombres en Python]].

Cómo se organiza y se carga código entre archivos.

El código se divide en [[IA graphs/python/Módulo en Python|módulos]] con espacios de nombres propios. [[IA graphs/python/Paquetes en Python|Los paquetes]] organizan esos módulos y [[IA graphs/python/import en Python|import]] vincula nombres utilizables.

[[IA graphs/python/Punto de entrada y __main__ en Python|El punto de entrada]] separa iniciar un programa de importar sus operaciones. [[IA graphs/python/Sistema de importación en Python|El sistema de importación]] explica caché, búsqueda y problemas de inicialización circular. La instalación de distribuciones pertenece a [[IA graphs/python/Dependencias y pip en Python|las herramientas del proyecto]].

## Partes del concepto

- [[IA graphs/python/Módulo en Python|Módulo en Python]] — Un módulo es una unidad de código con su propio espacio de nombres.
- [[IA graphs/python/import en Python|import en Python]] — import carga o reutiliza un módulo y vincula nombres en el ámbito actual.
- [[IA graphs/python/Paquetes en Python|Paquetes en Python]] — Un paquete organiza módulos bajo nombres jerárquicos.
- [[IA graphs/python/Punto de entrada y __main__ en Python|Punto de entrada y __main__ en Python]] — El módulo que inicia una ejecución recibe el nombre __main__.
- [[IA graphs/python/Sistema de importación en Python|Sistema de importación en Python]] — El sistema de importación localiza módulos, crea sus objetos y ejecuta su inicialización.

## Recuperación activa

> [!question]
> ¿Cómo se relacionan las partes de módulos y paquetes en python y qué función cumple cada una?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/reference/import.html).
