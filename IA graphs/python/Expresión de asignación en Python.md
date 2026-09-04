---
title: "Expresión de asignación en Python"
type: atomic
python_version: "3.14"
aliases: []
tags:
  - "python"
  - "estudio"
up:
  - "[[IA graphs/python/Expresiones y operadores en Python|Expresiones y operadores en Python]]"
prerequisites:
  - "[[IA graphs/python/Variables y asignación en Python|Variables y asignación en Python]]"
  - "[[IA graphs/python/Expresiones y sentencias en Python|Expresiones y sentencias en Python]]"
parts: []
related:
  - "[[IA graphs/python/Condicional if en Python|Condicional if en Python]]"
contrasts: []
---

# Expresión de asignación en Python

Forma parte de [[IA graphs/python/Expresiones y operadores en Python|Expresiones y operadores en Python]].

Antes de estudiar: [[IA graphs/python/Variables y asignación en Python|Variables y asignación en Python]] · [[IA graphs/python/Expresiones y sentencias en Python|Expresiones y sentencias en Python]].

El operador := asigna un resultado a un nombre y también produce ese resultado.

Permite calcular una expresión y reutilizarla dentro de una condición. Su destino debe ser un nombre, no un atributo ni un elemento por índice. Algunos contextos exigen paréntesis.

No sustituye la sentencia `=` en todos sus usos. En [[IA graphs/python/Comprensiones en Python|comprensiones]] tiene restricciones de ubicación y ámbito; para empezar conviene usarlo solo cuando evita una repetición y deja clara la condición.

## Ejemplo verificable

```python
datos = [10, 20, 30]
if (cantidad := len(datos)) > 2:
    print(cantidad)
```

Salida esperada:

```text
3
```

## Recuperación activa

> [!question]
> ¿Qué dos efectos tiene cantidad := len(datos)?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/reference/expressions.html).
