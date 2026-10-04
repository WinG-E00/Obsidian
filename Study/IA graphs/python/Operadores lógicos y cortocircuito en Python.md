---
title: Operadores lógicos y cortocircuito en Python
type: atomic
python_version: "3.14"
aliases: []
tags:
  - python
  - estudio
up:
  - "[[Expresiones y operadores en Python|Expresiones y operadores en Python]]"
prerequisites:
  - "[[Evaluación booleana en Python|Evaluación booleana en Python]]"
parts: []
related:
  - "[[None en Python|None en Python]]"
  - "[[Condicional if en Python|Condicional if en Python]]"
contrasts: []
---

# Operadores lógicos y cortocircuito en Python

Forma parte de [[Expresiones y operadores en Python|Expresiones y operadores en Python]].

Antes de estudiar: [[Evaluación booleana en Python|Evaluación booleana en Python]].

and y or seleccionan operandos según su verdad; not devuelve un booleano.

`a and b` devuelve a si a es falso; en otro caso evalúa y devuelve b. `a or b` devuelve a si es verdadero; si no, evalúa y devuelve b. Por eso no siempre producen `True` o `False`.

El cortocircuito permite evitar una operación innecesaria, como dividir cuando el denominador es cero. Usar `valor or defecto` sustituye también ceros y colecciones vacías; si solo falta un valor cuando es [[None en Python|None]], hay que comprobarlo explícitamente.

## Ejemplo verificable

```python
print('' or 'invitado')
print('ok' and 7)
print(not [])
denominador = 0
print(denominador != 0 and 10 / denominador > 2)
```

Salida esperada:

```text
invitado
7
True
False
```

## Recuperación activa

> [!question]
> ¿Qué devuelve 'ok' and 7 y por qué no devuelve True?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/reference/expressions.html).
