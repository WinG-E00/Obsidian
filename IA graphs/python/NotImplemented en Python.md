---
title: "NotImplemented en Python"
type: atomic
python_version: "3.14"
aliases: []
tags:
  - "python"
  - "estudio"
up:
  - "[[IA graphs/python/Métodos especiales en Python|Métodos especiales en Python]]"
prerequisites:
  - "[[IA graphs/python/Sobrecarga de operadores en Python|Sobrecarga de operadores en Python]]"
parts: []
related:
  - "[[IA graphs/python/Clases abstractas en Python|Clases abstractas en Python]]"
contrasts: []
---

# NotImplemented en Python

Forma parte de [[IA graphs/python/Métodos especiales en Python|Métodos especiales en Python]].

Antes de estudiar: [[IA graphs/python/Sobrecarga de operadores en Python|Sobrecarga de operadores en Python]].

NotImplemented señala que un método de operación no admite esa combinación de operandos.

Es un objeto único usado como valor de retorno en ciertos métodos numéricos y de comparación. Permite probar una operación reflejada o una alternativa definida por el lenguaje; si no hay operación válida, puede terminar en `TypeError`.

No es una excepción ni indica por sí solo que el método de una clase abstracta esté pendiente. `NotImplementedError` es una excepción distinta. En Python 3.14, evaluar `bool(NotImplemented)` produce `TypeError`.

## Ejemplo verificable

```python
print(NotImplemented is NotImplemented)
try:
    bool(NotImplemented)
except TypeError:
    print('sin valor booleano')
```

Salida esperada:

```text
True
sin valor booleano
```

## Recuperación activa

> [!question]
> ¿Por qué return NotImplemented y raise NotImplementedError comunican cosas distintas?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/reference/datamodel.html).
