---
title: "Comprensiones de conjuntos en Python"
type: atomic
python_version: "3.14"
aliases: []
tags:
  - "python"
  - "estudio"
up:
  - "[[IA graphs/python/Comprensiones en Python|Comprensiones en Python]]"
prerequisites:
  - "[[IA graphs/python/Bucle for en Python|Bucle for en Python]]"
  - "[[IA graphs/python/set en Python|set en Python]]"
parts: []
related:
  - "[[IA graphs/python/Comprensiones de diccionarios en Python|Comprensiones de diccionarios en Python]]"
  - "[[IA graphs/python/Expresiones generadoras en Python|Expresiones generadoras en Python]]"
contrasts: []
---

# Comprensiones de conjuntos en Python

Forma parte de [[IA graphs/python/Comprensiones en Python|Comprensiones en Python]].

Antes de estudiar: [[IA graphs/python/Bucle for en Python|Bucle for en Python]] · [[IA graphs/python/set en Python|set en Python]].

Una comprensión de conjunto calcula valores y conserva solo los distintos.

Se escribe `{expresion for x in iterable if condicion}`. La ausencia de `:` la distingue de una comprensión de diccionario. Cada resultado debe ser hashable.

La cantidad de resultados puede ser menor que la cantidad de entradas aunque no exista filtro, porque se eliminan duplicados. No hay una comprensión de tupla: los paréntesis en la forma equivalente crean [[IA graphs/python/Expresiones generadoras en Python|un generador]].

## Ejemplo verificable

```python
iniciales = {palabra[0] for palabra in ['sol', 'silla', 'luna']}
print(sorted(iniciales))
```

Salida esperada:

```text
['l', 's']
```

## Recuperación activa

> [!question]
> ¿Por qué tres entradas pueden producir solo dos elementos?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/reference/expressions.html).
