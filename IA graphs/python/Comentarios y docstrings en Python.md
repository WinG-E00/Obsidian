---
title: "Comentarios y docstrings en Python"
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
  - "[[IA graphs/python/Definición de funciones en Python|Definición de funciones en Python]]"
contrasts: []
---

# Comentarios y docstrings en Python

Forma parte de [[IA graphs/python/Sintaxis de Python|Sintaxis de Python]].

Un comentario explica el código; una docstring documenta un objeto durante la ejecución.

`#` inicia un comentario hasta el final de la línea, fuera de un literal de texto. Una cadena al principio de un módulo, función o clase es su docstring y puede consultarse mediante `__doc__` o `help`.

Una cadena de varias líneas colocada en cualquier otro lugar no se convierte automáticamente en comentario ni en docstring. Documentá el propósito y el contrato; [[IA graphs/python/Definición de funciones en Python|una función]] necesita explicar qué recibe y devuelve cuando eso no resulta evidente.

## Ejemplo verificable

```python
def doble(n):
    """Devuelve el doble de n."""
    return n * 2

print(doble.__doc__)
```

Salida esperada:

```text
Devuelve el doble de n.
```

## Recuperación activa

> [!question]
> ¿Qué hace que una cadena sea la docstring de una función?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/tutorial/controlflow.html).
