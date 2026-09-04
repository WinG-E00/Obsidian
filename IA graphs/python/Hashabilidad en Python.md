---
title: "Hashabilidad en Python"
type: atomic
python_version: "3.14"
aliases: []
tags:
  - "python"
  - "estudio"
up:
  - "[[IA graphs/python/Modelo de objetos en Python|Modelo de objetos en Python]]"
prerequisites:
  - "[[IA graphs/python/Identidad e igualdad en Python|Identidad e igualdad en Python]]"
  - "[[IA graphs/python/Mutabilidad en Python|Mutabilidad en Python]]"
parts: []
related:
  - "[[IA graphs/python/dict en Python|dict en Python]]"
  - "[[IA graphs/python/set en Python|set en Python]]"
  - "[[IA graphs/python/Sobrecarga de operadores en Python|Sobrecarga de operadores en Python]]"
contrasts: []
---

# Hashabilidad en Python

Forma parte de [[IA graphs/python/Modelo de objetos en Python|Modelo de objetos en Python]].

Antes de estudiar: [[IA graphs/python/Identidad e igualdad en Python|Identidad e igualdad en Python]] · [[IA graphs/python/Mutabilidad en Python|Mutabilidad en Python]].

Un objeto hashable puede usarse como clave de diccionario o elemento de un conjunto.

Su hash debe permanecer estable durante su vida y dos objetos iguales deben tener el mismo hash. Tener hashes iguales no obliga a ser iguales: pueden existir colisiones.

`str`, `int` y muchas tuplas son hashables. Una tupla que contiene una lista no lo es. Las instancias de clases propias pueden ser mutables y hashables por identidad; por eso hashable no es sinónimo universal de inmutable. Si personalizás igualdad, debés revisar también `__hash__`.

## Ejemplo verificable

```python
datos = {('AR', 2026): 'registro'}
print(datos[('AR', 2026)])
try:
    hash(([1],))
except TypeError:
    print('no hashable')
```

Salida esperada:

```text
registro
no hashable
```

## Recuperación activa

> [!question]
> ¿Por qué una tupla puede no ser una clave válida?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/reference/datamodel.html).
