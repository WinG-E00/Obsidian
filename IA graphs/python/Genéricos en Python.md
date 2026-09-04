---
title: "Genéricos en Python"
type: atomic
python_version: "3.14"
aliases: []
tags:
  - "python"
  - "estudio"
up:
  - "[[IA graphs/python/Anotaciones de tipos en Python|Anotaciones de tipos en Python]]"
prerequisites:
  - "[[IA graphs/python/Anotaciones de funciones y variables en Python|Anotaciones de funciones y variables en Python]]"
  - "[[IA graphs/python/list en Python|list en Python]]"
parts: []
related:
  - "[[IA graphs/python/Alias de tipos en Python|Alias de tipos en Python]]"
  - "[[IA graphs/python/Protocol en Python|Protocol en Python]]"
contrasts: []
---

# Genéricos en Python

Forma parte de [[IA graphs/python/Anotaciones de tipos en Python|Anotaciones de tipos en Python]].

Antes de estudiar: [[IA graphs/python/Anotaciones de funciones y variables en Python|Anotaciones de funciones y variables en Python]] · [[IA graphs/python/list en Python|list en Python]].

Un genérico conserva una relación de tipos sin fijarla a un único tipo concreto.

Desde 3.12 se puede escribir `def primero[T](datos: list[T]) -> T:`. El parámetro T vincula el tipo de entrada con el de salida para el analizador; no es un valor que se pasa como argumento normal.

También hay clases genéricas y límites como `T: Comparable`, además de la sintaxis anterior con `TypeVar` y `Generic`. `list[T]` es invariante para el tipado estático: permitir escribir elementos condiciona qué sustituciones son seguras. Para una entrada solo de lectura, una abstracción como `Sequence[T]` puede expresar mejor el contrato.

## Ejemplo verificable

```python
def primero[T](datos: list[T]) -> T:
    if not datos:
        raise ValueError('lista vacía')
    return datos[0]

print(primero([10, 20]))
print(primero(['a', 'b']))
```

Salida esperada:

```text
10
a
```

## Recuperación activa

> [!question]
> ¿Qué relación conserva T que se perdería usando Any en entrada y salida?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/library/typing.html).
