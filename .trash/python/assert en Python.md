---
title: assert en Python
type: atomic
python_version: "3.14"
aliases: []
tags:
  - python
  - estudio
up:
  - "[[Excepciones en Python|Excepciones en Python]]"
prerequisites:
  - "[[Condicional if en Python|Condicional if en Python]]"
  - "[[raise y encadenamiento en Python|raise y encadenamiento en Python]]"
parts: []
related:
  - "[[Pruebas con unittest en Python|Pruebas con unittest en Python]]"
contrasts: []
---

# assert en Python

Forma parte de [[Excepciones en Python|Excepciones en Python]].

Antes de estudiar: [[Condicional if en Python|Condicional if en Python]] · [[raise y encadenamiento en Python|raise y encadenamiento en Python]].

assert expresa una condición interna que debería cumplirse si el programa es correcto.

`assert condicion, mensaje` produce `AssertionError` si la condición es falsa. Con optimización, por ejemplo al ejecutar con `-O`, estas comprobaciones pueden eliminarse.

Por eso no debe ser el único mecanismo de validación de entradas, permisos o reglas necesarias durante la ejecución normal. Para esas condiciones se usa `if` y [[raise y encadenamiento en Python|raise]]. Tampoco se deben esconder efectos necesarios dentro de la condición de un assert.

## Ejemplo verificable

```python
valor = 4
assert valor % 2 == 0, 'se esperaba un número par'
print(valor)
```

Salida esperada:

```text
4
```

## Recuperación activa

> [!question]
> ¿Por qué validar una entrada exclusivamente con assert puede fallar en producción?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/reference/simple_stmts.html).
