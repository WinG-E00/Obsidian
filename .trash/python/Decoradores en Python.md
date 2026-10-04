---
title: Decoradores en Python
type: atomic
python_version: "3.14"
aliases: []
tags:
  - python
  - estudio
up:
  - "[[Funciones en Python|Funciones en Python]]"
prerequisites:
  - "[[Definición de funciones en Python|Definición de funciones en Python]]"
  - "[[args y kwargs en Python|args y kwargs en Python]]"
  - "[[Closures en Python|Closures en Python]]"
parts: []
related:
  - "[[property en Python|property en Python]]"
  - "[[dataclasses en Python|dataclasses en Python]]"
contrasts: []
---

# Decoradores en Python

Forma parte de [[Funciones en Python|Funciones en Python]].

Antes de estudiar: [[Definición de funciones en Python|Definición de funciones en Python]] · [[args y kwargs en Python|args y kwargs en Python]] · [[Closures en Python|Closures en Python]].

Un decorador recibe una función o clase y produce el objeto que quedará vinculado a su nombre.

`@decorador` sobre `def f` equivale conceptualmente a definir f y luego hacer `f = decorador(f)`. Varios decoradores se aplican de abajo hacia arriba. Pueden registrar, adaptar o envolver la operación.

Un envoltorio suele usar [[args y kwargs en Python|args y kwargs]] para reenviar argumentos. `functools.wraps` conserva metadatos útiles y `__wrapped__`, que ayuda a la inspección; no cambia por sí solo lo que acepta o calcula el código envolvente.

## Ejemplo verificable

```python
from functools import wraps

def duplicar_resultado(funcion):
    @wraps(funcion)
    def envuelta(*args, **kwargs):
        return 2 * funcion(*args, **kwargs)
    return envuelta

@duplicar_resultado
def suma(a, b):
    return a + b

print(suma(2, 3), suma.__name__)
```

Salida esperada:

```text
10 suma
```

## Recuperación activa

> [!question]
> ¿En qué momento se aplica el decorador a la función?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/library/functools.html).
