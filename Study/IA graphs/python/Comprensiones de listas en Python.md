---
title: Comprensiones de listas en Python
type: atomic
python_version: "3.14"
aliases: []
tags:
  - python
  - estudio
up:
  - "[[Comprensiones en Python|Comprensiones en Python]]"
prerequisites:
  - "[[Bucle for en Python|Bucle for en Python]]"
  - "[[list en Python|list en Python]]"
parts: []
related:
  - "[[Expresiones generadoras en Python|Expresiones generadoras en Python]]"
  - "[[Comprensiones de diccionarios en Python|Comprensiones de diccionarios en Python]]"
contrasts:
  - "[[Expresiones generadoras en Python|Expresiones generadoras en Python]]"
---

# Comprensiones de listas en Python

Forma parte de [[Comprensiones en Python|Comprensiones en Python]].

Antes de estudiar: [[Bucle for en Python|Bucle for en Python]] · [[list en Python|list en Python]].

Una comprensión de lista construye una lista transformando y filtrando elementos.

`[expresion for x in iterable if condicion]` evalúa la expresión solo para los elementos aceptados. El filtro final no es lo mismo que `a if condicion else b` dentro de la expresión: este último elige un valor sin descartar necesariamente el elemento.

La variable de iteración de una comprensión tiene un ámbito propio y no reemplaza una variable homónima del exterior. Varios `for` se leen como bucles anidados en el orden escrito; si la lógica crece demasiado, un bucle explícito facilita su lectura.

## Ejemplo verificable

```python
resultado = [n * n for n in range(6) if n % 2 == 0]
print(resultado)
```

Salida esperada:

```text
[0, 4, 16]
```

## Para comparar

- [[Expresiones generadoras en Python|Expresiones generadoras en Python]]

## Recuperación activa

> [!question]
> ¿Qué determina el filtro y qué determina la expresión inicial?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/tutorial/datastructures.html).
