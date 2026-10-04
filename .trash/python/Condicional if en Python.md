---
title: Condicional if en Python
type: atomic
python_version: "3.14"
aliases: []
tags:
  - python
  - estudio
up:
  - "[[Estructuras de control en Python|Estructuras de control en Python]]"
prerequisites:
  - "[[Evaluación booleana en Python|Evaluación booleana en Python]]"
  - "[[Indentación y bloques en Python|Indentación y bloques en Python]]"
parts: []
related:
  - "[[Operadores de comparación en Python|Operadores de comparación en Python]]"
contrasts: []
---

# Condicional if en Python

Forma parte de [[Estructuras de control en Python|Estructuras de control en Python]].

Antes de estudiar: [[Evaluación booleana en Python|Evaluación booleana en Python]] · [[Indentación y bloques en Python|Indentación y bloques en Python]].

if selecciona un bloque según el valor de verdad de una condición.

`if` evalúa primero su condición; `elif` prueba alternativas en orden y `else` cubre el caso restante. Solo se ejecuta la primera rama cuyo criterio corresponde. No se exige que la condición sea literalmente bool: se usa [[Evaluación booleana en Python|evaluación booleana]].

La expresión `a if condicion else b` produce un valor y evalúa únicamente la rama elegida. No es lo mismo que una sentencia `if` con bloques. La sangría delimita el contenido de cada rama.

## Ejemplo verificable

```python
edad = 17
if edad >= 18:
    estado = 'adulto'
else:
    estado = 'menor'
print(estado)
print('sí' if edad >= 18 else 'no')
```

Salida esperada:

```text
menor
no
```

## Recuperación activa

> [!question]
> ¿Se evalúan ambas alternativas de una expresión condicional?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/reference/compound_stmts.html).
