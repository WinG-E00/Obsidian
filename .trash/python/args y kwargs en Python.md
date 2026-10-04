---
title: args y kwargs en Python
type: atomic
python_version: "3.14"
aliases: []
tags:
  - python
  - estudio
up:
  - "[[Parámetros y argumentos en Python|Parámetros y argumentos en Python]]"
prerequisites:
  - "[[Clases de parámetros en Python|Clases de parámetros en Python]]"
  - "[[tuple en Python|tuple en Python]]"
  - "[[dict en Python|dict en Python]]"
parts: []
related:
  - "[[Desempaquetado en Python|Desempaquetado en Python]]"
  - "[[Decoradores en Python|Decoradores en Python]]"
contrasts: []
---

# args y kwargs en Python

Forma parte de [[Parámetros y argumentos en Python|Parámetros y argumentos en Python]].

Antes de estudiar: [[Clases de parámetros en Python|Clases de parámetros en Python]] · [[tuple en Python|tuple en Python]] · [[dict en Python|dict en Python]].

*args recoge argumentos posicionales extra y **kwargs recoge argumentos por nombre extra.

Los nombres `args` y `kwargs` son convenciones; los operadores `*` y `**` son los que definen el comportamiento. La función recibe una tupla y un diccionario, respectivamente.

Esta flexibilidad resulta útil para adaptar o envolver funciones, pero también puede ocultar qué acepta realmente una operación. Al reenviar los valores a otra función, `funcion(*args, **kwargs)` los desempaqueta. No se pueden suministrar dos valores para el mismo parámetro.

## Ejemplo verificable

```python
def resumen(*numeros, **opciones):
    print(numeros)
    print(opciones)

resumen(2, 4, unidad='kg')
```

Salida esperada:

```text
(2, 4)
{'unidad': 'kg'}
```

## Recuperación activa

> [!question]
> ¿Qué tipos concretos reciben args y kwargs?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/tutorial/controlflow.html).
