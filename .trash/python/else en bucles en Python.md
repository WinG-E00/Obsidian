---
title: else en bucles en Python
type: atomic
python_version: "3.14"
aliases: []
tags:
  - python
  - estudio
up:
  - "[[Estructuras de control en Python|Estructuras de control en Python]]"
prerequisites:
  - "[[Bucle for en Python|Bucle for en Python]]"
  - "[[break en Python|break en Python]]"
parts: []
related:
  - "[[continue en Python|continue en Python]]"
contrasts: []
---

# else en bucles en Python

Forma parte de [[Estructuras de control en Python|Estructuras de control en Python]].

Antes de estudiar: [[Bucle for en Python|Bucle for en Python]] · [[break en Python|break en Python]].

El else de un bucle se ejecuta al terminar normalmente sin break.

En `for` corresponde al agotamiento del iterador; en `while`, a que la condición resulte falsa. También ocurre si el bucle realiza cero vueltas. No se ejecuta si se abandona mediante `break`, `return` o una excepción que se propaga.

Es útil para búsquedas: el bloque del bucle detecta el caso encontrado y `else` describe que no apareció. Este `else` pertenece al bucle, no a un `if` interior.

## Ejemplo verificable

```python
for numero in [2, 4, 6]:
    if numero % 2:
        print('impar encontrado')
        break
else:
    print('ningún impar')
```

Salida esperada:

```text
ningún impar
```

## Recuperación activa

> [!question]
> ¿Por qué continue no evita por sí solo el else?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/reference/compound_stmts.html).
