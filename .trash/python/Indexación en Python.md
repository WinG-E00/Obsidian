---
title: Indexación en Python
type: atomic
python_version: "3.14"
aliases: []
tags:
  - python
  - estudio
up:
  - "[[Secuencias en Python|Secuencias en Python]]"
prerequisites: []
parts: []
related:
  - "[[Slicing en Python|Slicing en Python]]"
contrasts: []
---

# Indexación en Python

Forma parte de [[Secuencias en Python|Secuencias en Python]].

La indexación selecciona un elemento de una secuencia por su posición.

Los índices empiezan en cero. Un índice negativo cuenta desde el final: `-1` es el último elemento. El resultado depende del contenedor: una cadena devuelve otra cadena de longitud uno; [[bytes en Python|bytes]] devuelve un entero.

Un índice fuera de rango produce `IndexError`. [[Slicing en Python|Un slice]] selecciona un tramo y recorta ciertos límites fuera de rango, por lo que no es equivalente a una consulta de un solo elemento.

## Ejemplo verificable

```python
nombres = ['Ana', 'Luz', 'Sol']
print(nombres[0], nombres[-1])
try:
    nombres[3]
except IndexError:
    print('fuera de rango')
```

Salida esperada:

```text
Ana Sol
fuera de rango
```

## Recuperación activa

> [!question]
> ¿Qué índice accede al último elemento sin calcular la longitud?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/library/stdtypes.html).
