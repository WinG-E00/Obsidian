---
title: Iterable en Python
type: atomic
python_version: "3.14"
aliases: []
tags:
  - python
  - estudio
up:
  - "[[Iteración en Python|Iteración en Python]]"
prerequisites: []
parts: []
related:
  - "[[Iterador en Python|Iterador en Python]]"
  - "[[Bucle for en Python|Bucle for en Python]]"
contrasts:
  - "[[Iterador en Python|Iterador en Python]]"
---

# Iterable en Python

Forma parte de [[Iteración en Python|Iteración en Python]].

Un iterable puede proporcionar un iterador mediante iter(objeto).

Listas, textos, diccionarios y rangos son iterables. `for` solicita un iterador al comenzar el recorrido. Una clase suele proporcionar este comportamiento mediante `__iter__`; existe también compatibilidad con secuencias basadas en `__getitem__` entero.

Ser iterable no implica tener longitud ni poder consultar índices. Algunas fuentes solo se recorren una vez porque también son [[Iterador en Python|iteradores]]. Esta distinción permite comprender qué consumen `list`, `sum` y las [[Comprensiones en Python|comprensiones]].

## Ejemplo verificable

```python
datos = [4, 5]
a = iter(datos)
b = iter(datos)
print(next(a), next(a))
print(next(b))
```

Salida esperada:

```text
4 5
4
```

## Para comparar

- [[Iterador en Python|Iterador en Python]]

## Recuperación activa

> [!question]
> ¿Por qué dos iteradores de la misma lista pueden estar en posiciones distintas?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/library/stdtypes.html).
