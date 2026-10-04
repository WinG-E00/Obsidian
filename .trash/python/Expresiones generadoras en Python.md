---
title: Expresiones generadoras en Python
type: atomic
python_version: "3.14"
aliases: []
tags:
  - python
  - estudio
up:
  - "[[Generadores en Python|Generadores en Python]]"
prerequisites:
  - "[[yield en Python|yield en Python]]"
  - "[[Bucle for en Python|Bucle for en Python]]"
parts: []
related:
  - "[[Comprensiones de listas en Python|Comprensiones de listas en Python]]"
  - "[[str.join en Python|str.join en Python]]"
contrasts:
  - "[[Comprensiones de listas en Python|Comprensiones de listas en Python]]"
---

# Expresiones generadoras en Python

Forma parte de [[Generadores en Python|Generadores en Python]].

Antes de estudiar: [[yield en Python|yield en Python]] · [[Bucle for en Python|Bucle for en Python]].

Una expresión generadora produce valores de forma perezosa mediante una sintaxis compacta.

`(expresion for x in iterable if condicion)` crea un generador. No construye toda la colección de resultados y se consume una sola vez. La expresión iterable del primer `for` se evalúa al crear el generador; los resultados se calculan al recorrerlo.

Conviene cuando un consumidor como `sum` solo necesita procesar cada elemento una vez. Si necesitás consultar varias veces los resultados o indexarlos, una [[Comprensiones de listas en Python|comprensión de lista]] materializa la colección.

## Ejemplo verificable

```python
g = (n * n for n in range(4))
print(next(g))
print(sum(g))
print(list(g))
```

Salida esperada:

```text
0
14
[]
```

## Para comparar

- [[Comprensiones de listas en Python|Comprensiones de listas en Python]]

## Recuperación activa

> [!question]
> ¿Qué diferencia de consumo hay entre una expresión generadora y una lista?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/reference/expressions.html).
