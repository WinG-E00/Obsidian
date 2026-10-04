---
title: Expresiones y sentencias en Python
type: atomic
python_version: "3.14"
aliases: []
tags:
  - python
  - estudio
up:
  - "[[Sintaxis de Python|Sintaxis de Python]]"
prerequisites: []
parts: []
related:
  - "[[Variables y asignación en Python|Variables y asignación en Python]]"
  - "[[Expresión de asignación en Python|Expresión de asignación en Python]]"
contrasts: []
---

# Expresiones y sentencias en Python

Forma parte de [[Sintaxis de Python|Sintaxis de Python]].

Una expresión produce un valor; una sentencia organiza una acción del programa.

`2 + 3` es una expresión. `x = 2 + 3` es una sentencia de asignación que contiene esa expresión. Una llamada puede aparecer dentro de otra expresión aunque devuelva `None`.

Las sentencias simples incluyen asignar, importar y retornar. Las compuestas, como `if`, `def` y `try`, contienen bloques. No toda sentencia puede ponerse donde se espera un valor: `return` no es una expresión. [[Expresión de asignación en Python|La expresión de asignación]] tiene reglas propias y no reemplaza todos los usos de `=`.

## Ejemplo verificable

```python
x = 2 + 3
print(x * 2)
```

Salida esperada:

```text
10
```

## Recuperación activa

> [!question]
> ¿Qué partes de x = 2 + 3 son expresiones?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/reference/simple_stmts.html).
