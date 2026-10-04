---
title: raise y encadenamiento en Python
type: atomic
python_version: "3.14"
aliases: []
tags:
  - python
  - estudio
up:
  - "[[Excepciones en Python|Excepciones en Python]]"
prerequisites:
  - "[[Objeto excepción y propagación en Python|Objeto excepción y propagación en Python]]"
  - "[[try y except en Python|try y except en Python]]"
parts: []
related:
  - "[[Excepciones propias en Python|Excepciones propias en Python]]"
contrasts: []
---

# raise y encadenamiento en Python

Forma parte de [[Excepciones en Python|Excepciones en Python]].

Antes de estudiar: [[Objeto excepción y propagación en Python|Objeto excepción y propagación en Python]] · [[try y except en Python|try y except en Python]].

raise inicia o vuelve a propagar una excepción.

`raise ValueError('mensaje')` crea una señal de error. Dentro de un manejador, `raise` sin argumentos vuelve a propagar la excepción activa. `raise Nueva(...) from original` declara una causa explícita.

`from None` oculta el contexto implícito en la presentación habitual del traceback; no convierte el fallo en éxito. Las excepciones permiten que una función comunique un problema sin inventar un valor de retorno ambiguo.

## Ejemplo verificable

```python
try:
    try:
        int('x')
    except ValueError as original:
        raise RuntimeError('dato no interpretable') from original
except RuntimeError as error:
    print(str(error))
    print(type(error.__cause__).__name__)
```

Salida esperada:

```text
dato no interpretable
ValueError
```

## Recuperación activa

> [!question]
> ¿Qué información conserva raise ... from original?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/reference/simple_stmts.html).
