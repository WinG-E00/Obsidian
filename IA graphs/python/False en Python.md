---
title: "False en Python"
type: atomic
python_version: "3.14"
aliases: []
tags:
  - "python"
  - "estudio"
up:
  - "[[IA graphs/python/bool en Python|bool en Python]]"
prerequisites: []
parts: []
related:
  - "[[IA graphs/python/True en Python|True en Python]]"
  - "[[IA graphs/python/None en Python|None en Python]]"
contrasts:
  - "[[IA graphs/python/True en Python|True en Python]]"
---

# False en Python

Forma parte de [[IA graphs/python/bool en Python|bool en Python]].

False es el valor booleano que representa una condición falsa.

Es una constante de tipo [[IA graphs/python/bool en Python|bool]]. No es idéntico a `0` ni a `None`, aunque los tres sean falsos en una condición. Esta distinción permite separar una respuesta negativa de la [[IA graphs/python/None en Python|ausencia de respuesta]].

`not condición` produce un booleano inverso. Cuando se almacenan estados de dominio, decidir entre `False` y `None` afecta qué significa cada dato.

## Ejemplo verificable

```python
print(2 > 4)
print(False == 0)
print(False is None)
```

Salida esperada:

```text
False
True
False
```

## Para comparar

- [[IA graphs/python/True en Python|True en Python]]

## Recuperación activa

> [!question]
> ¿Qué diferencia semántica puede haber entre False y None?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/library/stdtypes.html).
