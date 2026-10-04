---
title: Modelo de objetos en Python
type: moc
python_version: "3.14"
aliases: []
tags:
  - python
  - estudio
up:
  - "[[Python - Mapa del lenguaje|Python - Mapa del lenguaje]]"
prerequisites:
  - "[[Sintaxis de Python|Sintaxis de Python]]"
parts:
  - "[[Variables y asignación en Python|Variables y asignación en Python]]"
  - "[[Identidad e igualdad en Python|Identidad e igualdad en Python]]"
  - "[[Mutabilidad en Python|Mutabilidad en Python]]"
  - "[[Copia superficial y profunda en Python|Copia superficial y profunda en Python]]"
  - "[[Hashabilidad en Python|Hashabilidad en Python]]"
  - "[[Eliminación de referencias con del en Python|Eliminación de referencias con del en Python]]"
  - "[[Gestión de memoria en Python|Gestión de memoria en Python]]"
related: []
contrasts: []
---

# Modelo de objetos en Python

Forma parte de [[Python - Mapa del lenguaje|Python - Mapa del lenguaje]].

Antes de estudiar: [[Sintaxis de Python|Sintaxis de Python]].

Cómo los nombres, los tipos y la identidad explican el comportamiento de los datos.

Los nombres de un programa no son cajas que contengan copias independientes. [[Variables y asignación en Python|La asignación]] vincula nombres y objetos; [[Identidad e igualdad en Python|la identidad]] distingue objetos; [[Mutabilidad en Python|la mutabilidad]] determina qué puede cambiar.

De estas reglas se deducen [[Copia superficial y profunda en Python|las copias]], los requisitos de [[Hashabilidad en Python|hashabilidad]] y la diferencia entre [[Eliminación de referencias con del en Python|eliminar una referencia]] y [[Gestión de memoria en Python|recuperar memoria]]. Esta rama explica efectos que aparecen después en parámetros, colecciones y clases.

## Partes del concepto

- [[Variables y asignación en Python|Variables y asignación en Python]] — Asignar vincula un nombre con un objeto.
- [[Identidad e igualdad en Python|Identidad e igualdad en Python]] — La identidad pregunta si hay un mismo objeto; la igualdad compara valores según su tipo.
- [[Mutabilidad en Python|Mutabilidad en Python]] — Un objeto mutable puede cambiar conservando su identidad.
- [[Copia superficial y profunda en Python|Copia superficial y profunda en Python]] — Copiar permite crear otro contenedor y decidir si sus elementos internos se comparten.
- [[Hashabilidad en Python|Hashabilidad en Python]] — Un objeto hashable puede usarse como clave de diccionario o elemento de un conjunto.
- [[Eliminación de referencias con del en Python|Eliminación de referencias con del en Python]] — del elimina una vinculación, un atributo o una posición de un contenedor.
- [[Gestión de memoria en Python|Gestión de memoria en Python]] — Python administra la vida de los objetos, pero los recursos externos necesitan cierre explícito.

## Recuperación activa

> [!question]
> ¿Cómo se relacionan las partes de modelo de objetos en python y qué función cumple cada una?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/reference/datamodel.html).
