---
title: Precedencia y orden de evaluación en Python
type: atomic
python_version: "3.14"
aliases: []
tags:
  - python
  - estudio
up:
  - "[[Expresiones y operadores en Python|Expresiones y operadores en Python]]"
prerequisites:
  - "[[Operadores aritméticos en Python|Operadores aritméticos en Python]]"
parts: []
related:
  - "[[Operadores lógicos y cortocircuito en Python|Operadores lógicos y cortocircuito en Python]]"
contrasts: []
---

# Precedencia y orden de evaluación en Python

Forma parte de [[Expresiones y operadores en Python|Expresiones y operadores en Python]].

Antes de estudiar: [[Operadores aritméticos en Python|Operadores aritméticos en Python]].

La precedencia agrupa operaciones; el orden de evaluación decide cuándo se calculan sus operandos.

La potencia se agrupa antes que multiplicación y división; estas antes que suma y resta. Después aparecen desplazamientos, operaciones bit a bit, comparaciones, `not`, `and` y `or`. Las expresiones condicionales, lambda y `:=` tienen precedencia todavía menor.

Los operandos se evalúan en general de izquierda a derecha, pero [[Operadores lógicos y cortocircuito en Python|el cortocircuito]] puede omitir algunos. `**` se asocia por la derecha y tiene una relación especial con signos unarios: `-2 ** 2` es `-(2 ** 2)`, mientras `2 ** -2` es válido. Los paréntesis explicitan la intención.

## Ejemplo verificable

```python
print(2 + 3 * 4)
print((2 + 3) * 4)
print(2 ** 3 ** 2)
print(-2 ** 2, 2 ** -2)
```

Salida esperada:

```text
14
20
512
-4 0.25
```

## Recuperación activa

> [!question]
> ¿En qué se diferencia agrupar una operación de evaluar sus operandos?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/reference/expressions.html).
