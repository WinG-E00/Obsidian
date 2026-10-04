---
title: Identidad e igualdad en Python
type: atomic
python_version: "3.14"
aliases: []
tags:
  - python
  - estudio
up:
  - "[[Modelo de objetos en Python|Modelo de objetos en Python]]"
prerequisites:
  - "[[Variables y asignación en Python|Variables y asignación en Python]]"
parts: []
related:
  - "[[Operadores de comparación en Python|Operadores de comparación en Python]]"
  - "[[None en Python|None en Python]]"
contrasts:
  - "[[Operadores de comparación en Python|Operadores de comparación en Python]]"
---

# Identidad e igualdad en Python

Forma parte de [[Modelo de objetos en Python|Modelo de objetos en Python]].

Antes de estudiar: [[Variables y asignación en Python|Variables y asignación en Python]].

La identidad pregunta si hay un mismo objeto; la igualdad compara valores según su tipo.

`a is b` comprueba identidad. `a == b` usa la comparación de igualdad, que una clase puede personalizar. Dos listas diferentes pueden contener los mismos elementos y ser iguales.

Usá `is None` para comprobar el objeto único [[None en Python|None]]. No uses `is` para comparar números o textos: la reutilización interna de ciertos objetos no es una garantía de igualdad por identidad. `id(objeto)` identifica al objeto durante su vida, no es una clave persistente entre ejecuciones.

## Ejemplo verificable

```python
a = [1]
b = [1]
c = a
print(a == b, a is b, a is c)
```

Salida esperada:

```text
True False True
```

## Para comparar

- [[Operadores de comparación en Python|Operadores de comparación en Python]]

## Recuperación activa

> [!question]
> ¿Pueden dos objetos ser iguales sin ser el mismo objeto?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/reference/datamodel.html).
