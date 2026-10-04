---
title: Mutabilidad en Python
type: atomic
python_version: "3.14"
aliases: []
tags:
  - python
  - estudio
up:
  - "[[Modelo de objetos en Python|Modelo de objetos en Python]]"
prerequisites:
  - "[[Variables y asignación en Python|Variables y asignación en Python]]"
  - "[[Identidad e igualdad en Python|Identidad e igualdad en Python]]"
parts: []
related:
  - "[[Copia superficial y profunda en Python|Copia superficial y profunda en Python]]"
  - "[[tuple en Python|tuple en Python]]"
contrasts: []
---

# Mutabilidad en Python

Forma parte de [[Modelo de objetos en Python|Modelo de objetos en Python]].

Antes de estudiar: [[Variables y asignación en Python|Variables y asignación en Python]] · [[Identidad e igualdad en Python|Identidad e igualdad en Python]].

Un objeto mutable puede cambiar conservando su identidad.

Las listas, diccionarios y conjuntos mutables admiten cambios internos. Los enteros, cadenas y tuplas no permiten reemplazar su propio valor o estructura. Cuando dos nombres comparten una lista, ambos observan sus modificaciones.

Una tupla puede contener una lista: no se puede reemplazar esa referencia dentro de la tupla, pero sí mutar la lista referida. Por eso inmutabilidad del contenedor no significa inmutabilidad de todo lo que contiene. [[Copia superficial y profunda en Python|Las copias]] permiten controlar cuánto estado se comparte.

## Ejemplo verificable

```python
a = [1]
b = a
b.append(2)
print(a)
print(a is b)
```

Salida esperada:

```text
[1, 2]
True
```

## Recuperación activa

> [!question]
> ¿Qué diferencia observable hay entre b.append(2) y b = [2]?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/reference/datamodel.html).
