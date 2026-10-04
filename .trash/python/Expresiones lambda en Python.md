---
title: Expresiones lambda en Python
type: atomic
python_version: "3.14"
aliases: []
tags:
  - python
  - estudio
up:
  - "[[Funciones en Python|Funciones en Python]]"
prerequisites:
  - "[[Definición de funciones en Python|Definición de funciones en Python]]"
parts: []
related:
  - "[[list.sort y sorted en Python|list.sort y sorted en Python]]"
  - "[[Closures en Python|Closures en Python]]"
contrasts: []
---

# Expresiones lambda en Python

Forma parte de [[Funciones en Python|Funciones en Python]].

Antes de estudiar: [[Definición de funciones en Python|Definición de funciones en Python]].

lambda crea una función cuyo cuerpo es una sola expresión.

`lambda x: x * 2` produce un objeto función que devuelve el resultado de la expresión. Puede recibir parámetros con las reglas usuales, pero no contener sentencias como `while` o `try`.

Es útil como clave breve de ordenación o adaptación local. Si la operación necesita nombre explicativo, documentación o varios pasos, [[Definición de funciones en Python|def]] expresa mejor su estructura. Lambda comparte las reglas de [[Closures en Python|captura de nombres]] con las demás funciones.

## Ejemplo verificable

```python
pares = [('a', 3), ('b', 1)]
print(sorted(pares, key=lambda par: par[1]))
```

Salida esperada:

```text
[('b', 1), ('a', 3)]
```

## Recuperación activa

> [!question]
> ¿Qué devuelve implícitamente una lambda?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/reference/expressions.html).
