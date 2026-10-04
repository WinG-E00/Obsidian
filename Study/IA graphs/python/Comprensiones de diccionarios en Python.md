---
title: Comprensiones de diccionarios en Python
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
  - "[[dict en Python|dict en Python]]"
  - "[[Hashabilidad en Python|Hashabilidad en Python]]"
parts: []
related:
  - "[[Comprensiones de listas en Python|Comprensiones de listas en Python]]"
  - "[[Comprensiones de conjuntos en Python|Comprensiones de conjuntos en Python]]"
contrasts: []
---

# Comprensiones de diccionarios en Python

Forma parte de [[Comprensiones en Python|Comprensiones en Python]].

Antes de estudiar: [[Bucle for en Python|Bucle for en Python]] · [[dict en Python|dict en Python]] · [[Hashabilidad en Python|Hashabilidad en Python]].

Una comprensión de diccionario calcula una clave y un valor por cada elemento aceptado.

La forma es `{clave: valor for elemento in iterable if condicion}`. Las claves producidas deben ser hashables; si se repiten, prevalece el último valor asignado a esa clave.

No crea una lista de pares, sino un [[dict en Python|mapeo]]. Para invertir un diccionario hay que pensar qué ocurre cuando varios valores originales son iguales: algunas asociaciones pueden perderse.

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
