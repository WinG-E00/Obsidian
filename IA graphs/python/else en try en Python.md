---
title: "else en try en Python"
type: atomic
python_version: "3.14"
aliases: []
tags:
  - "python"
  - "estudio"
up:
  - "[[IA graphs/python/try y except en Python|try y except en Python]]"
prerequisites:
  - "[[IA graphs/python/try y except en Python|try y except en Python]]"
parts: []
related:
  - "[[IA graphs/python/finally en Python|finally en Python]]"
contrasts: []
---

# else en try en Python

Forma parte de [[IA graphs/python/try y except en Python|try y except en Python]].

Antes de estudiar: [[IA graphs/python/try y except en Python|try y except en Python]].

El else de try ejecuta trabajo posterior cuando el bloque protegido termina sin excepción ni salida anticipada.

Las excepciones que nazcan dentro de `else` no son manejadas por los `except` del mismo `try`. Esto permite separar la operación que admite recuperación del trabajo que solo debe ocurrir tras su éxito.

No es equivalente a mover ese trabajo dentro de `try`: cambiaría qué errores atrapan sus manejadores. Tampoco es un bloque de limpieza incondicional; ese papel pertenece a [[IA graphs/python/finally en Python|finally]].

## Ejemplo verificable

```python
try:
    numero = int('12')
except ValueError:
    print('dato inválido')
else:
    print(numero * 2)
```

Salida esperada:

```text
24
```

## Recuperación activa

> [!question]
> ¿Los except de ese try manejan también errores producidos en else?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/reference/compound_stmts.html).
