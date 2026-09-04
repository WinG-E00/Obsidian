---
title: "Comprensiones de diccionarios en Python"
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
  - "[[IA graphs/python/dict en Python|dict en Python]]"
  - "[[IA graphs/python/Hashabilidad en Python|Hashabilidad en Python]]"
parts: []
related:
  - "[[IA graphs/python/Comprensiones de listas en Python|Comprensiones de listas en Python]]"
  - "[[IA graphs/python/Comprensiones de conjuntos en Python|Comprensiones de conjuntos en Python]]"
contrasts: []
---

# Comprensiones de diccionarios en Python

Forma parte de [[IA graphs/python/Comprensiones en Python|Comprensiones en Python]].

Antes de estudiar: [[IA graphs/python/Bucle for en Python|Bucle for en Python]] · [[IA graphs/python/dict en Python|dict en Python]] · [[IA graphs/python/Hashabilidad en Python|Hashabilidad en Python]].

Una comprensión de diccionario calcula una clave y un valor por cada elemento aceptado.

La forma es `{clave: valor for elemento in iterable if condicion}`. Las claves producidas deben ser hashables; si se repiten, prevalece el último valor asignado a esa clave.

No crea una lista de pares, sino un [[IA graphs/python/dict en Python|mapeo]]. Para invertir un diccionario hay que pensar qué ocurre cuando varios valores originales son iguales: algunas asociaciones pueden perderse.

## Ejemplo verificable

```python
longitudes = {palabra: len(palabra) for palabra in ['sol', 'luna']}
print(longitudes)
```

Salida esperada:

```text
{'sol': 3, 'luna': 4}
```

## Recuperación activa

> [!question]
> ¿Qué ocurre si dos iteraciones producen la misma clave?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/reference/expressions.html).
