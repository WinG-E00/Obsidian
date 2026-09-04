---
title: "Modelo de objetos en Python"
type: moc
python_version: "3.14"
aliases: []
tags:
  - "python"
  - "estudio"
up:
  - "[[IA graphs/python/Python - Mapa del lenguaje|Python - Mapa del lenguaje]]"
prerequisites:
  - "[[IA graphs/python/Sintaxis de Python|Sintaxis de Python]]"
parts:
  - "[[IA graphs/python/Variables y asignación en Python|Variables y asignación en Python]]"
  - "[[IA graphs/python/Identidad e igualdad en Python|Identidad e igualdad en Python]]"
  - "[[IA graphs/python/Mutabilidad en Python|Mutabilidad en Python]]"
  - "[[IA graphs/python/Copia superficial y profunda en Python|Copia superficial y profunda en Python]]"
  - "[[IA graphs/python/Hashabilidad en Python|Hashabilidad en Python]]"
  - "[[IA graphs/python/Eliminación de referencias con del en Python|Eliminación de referencias con del en Python]]"
  - "[[IA graphs/python/Gestión de memoria en Python|Gestión de memoria en Python]]"
related: []
contrasts: []
---

# Modelo de objetos en Python

Forma parte de [[IA graphs/python/Python - Mapa del lenguaje|Python - Mapa del lenguaje]].

Antes de estudiar: [[IA graphs/python/Sintaxis de Python|Sintaxis de Python]].

Cómo los nombres, los tipos y la identidad explican el comportamiento de los datos.

Los nombres de un programa no son cajas que contengan copias independientes. [[IA graphs/python/Variables y asignación en Python|La asignación]] vincula nombres y objetos; [[IA graphs/python/Identidad e igualdad en Python|la identidad]] distingue objetos; [[IA graphs/python/Mutabilidad en Python|la mutabilidad]] determina qué puede cambiar.

De estas reglas se deducen [[IA graphs/python/Copia superficial y profunda en Python|las copias]], los requisitos de [[IA graphs/python/Hashabilidad en Python|hashabilidad]] y la diferencia entre [[IA graphs/python/Eliminación de referencias con del en Python|eliminar una referencia]] y [[IA graphs/python/Gestión de memoria en Python|recuperar memoria]]. Esta rama explica efectos que aparecen después en parámetros, colecciones y clases.

## Partes del concepto

- [[IA graphs/python/Variables y asignación en Python|Variables y asignación en Python]] — Asignar vincula un nombre con un objeto.
- [[IA graphs/python/Identidad e igualdad en Python|Identidad e igualdad en Python]] — La identidad pregunta si hay un mismo objeto; la igualdad compara valores según su tipo.
- [[IA graphs/python/Mutabilidad en Python|Mutabilidad en Python]] — Un objeto mutable puede cambiar conservando su identidad.
- [[IA graphs/python/Copia superficial y profunda en Python|Copia superficial y profunda en Python]] — Copiar permite crear otro contenedor y decidir si sus elementos internos se comparten.
- [[IA graphs/python/Hashabilidad en Python|Hashabilidad en Python]] — Un objeto hashable puede usarse como clave de diccionario o elemento de un conjunto.
- [[IA graphs/python/Eliminación de referencias con del en Python|Eliminación de referencias con del en Python]] — del elimina una vinculación, un atributo o una posición de un contenedor.
- [[IA graphs/python/Gestión de memoria en Python|Gestión de memoria en Python]] — Python administra la vida de los objetos, pero los recursos externos necesitan cierre explícito.

## Recuperación activa

> [!question]
> ¿Cómo se relacionan las partes de modelo de objetos en python y qué función cumple cada una?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/reference/datamodel.html).
