---
title: "Clases de parámetros en Python"
type: atomic
python_version: "3.14"
aliases: []
tags:
  - "python"
  - "estudio"
up:
  - "[[IA graphs/python/Parámetros y argumentos en Python|Parámetros y argumentos en Python]]"
prerequisites:
  - "[[IA graphs/python/Definición de funciones en Python|Definición de funciones en Python]]"
parts: []
related:
  - "[[IA graphs/python/Valores por defecto en Python|Valores por defecto en Python]]"
  - "[[IA graphs/python/args y kwargs en Python|args y kwargs en Python]]"
contrasts: []
---

# Clases de parámetros en Python

Forma parte de [[IA graphs/python/Parámetros y argumentos en Python|Parámetros y argumentos en Python]].

Antes de estudiar: [[IA graphs/python/Definición de funciones en Python|Definición de funciones en Python]].

La posición de / y * en una firma define cómo puede pasarse cada argumento.

Antes de `/`, los parámetros son solo posicionales. Después de `*`, son solo por palabra clave. Los intermedios aceptan ambas formas. Un parámetro es el nombre de la definición; un argumento es el valor proporcionado en la llamada.

Python vincula argumentos antes de ejecutar el cuerpo. Argumentos faltantes, duplicados o no aceptados producen `TypeError`. Elegir parámetros solo por nombre hace explícitas opciones como `redondear=True`.

## Ejemplo verificable

```python
def sumar(a, /, b, *, extra=0):
    return a + b + extra

print(sumar(2, b=3, extra=4))
```

Salida esperada:

```text
9
```

## Recuperación activa

> [!question]
> ¿Cuáles de los parámetros del ejemplo pueden pasarse por nombre?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/tutorial/controlflow.html).
