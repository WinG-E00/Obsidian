---
title: "Indentación y bloques en Python"
type: atomic
python_version: "3.14"
aliases: []
tags:
  - "python"
  - "estudio"
up:
  - "[[IA graphs/python/Sintaxis de Python|Sintaxis de Python]]"
prerequisites: []
parts: []
related:
  - "[[IA graphs/python/Condicional if en Python|Condicional if en Python]]"
contrasts: []
---

# Indentación y bloques en Python

Forma parte de [[IA graphs/python/Sintaxis de Python|Sintaxis de Python]].

La sangría determina qué instrucciones pertenecen al mismo bloque.

Una cabecera como `if condición:` abre un bloque. Sus instrucciones se escriben con mayor sangría y el bloque termina al volver a una sangría anterior. La convención habitual es usar cuatro espacios por nivel; no es necesario que el ancho sea cuatro para que la gramática funcione.

Mezclar tabuladores y espacios de manera ambigua puede producir `TabError`. Dentro de `()`, `[]` o `{}` se puede continuar una expresión en varias líneas sin abrir un nuevo bloque.

## Ejemplo verificable

```python
if True:
    total = (
        10
        + 5
    )
    print(total)
print('fin')
```

Salida esperada:

```text
15
fin
```

## Recuperación activa

> [!question]
> ¿Qué determina que print('fin') esté fuera del if?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/reference/lexical_analysis.html).
