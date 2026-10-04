---
title: yield from en Python
type: atomic
python_version: "3.14"
aliases: []
tags:
  - python
  - estudio
up:
  - "[[Generadores en Python|Generadores en Python]]"
prerequisites:
  - "[[yield en Python|yield en Python]]"
  - "[[Retorno de funciones en Python|Retorno de funciones en Python]]"
parts: []
related:
  - "[[Iteración asíncrona en Python|Iteración asíncrona en Python]]"
contrasts: []
---

# yield from en Python

Forma parte de [[Generadores en Python|Generadores en Python]].

Antes de estudiar: [[yield en Python|yield en Python]] · [[Retorno de funciones en Python|Retorno de funciones en Python]].

yield from delega la producción de elementos a otro iterable.

En su uso básico, entrega los valores del recorrido delegado. Además transmite operaciones del protocolo del generador, como `send` y `throw`, y recoge como resultado el valor final de retorno de un subgenerador.

Esto permite componer productores sin reescribir el puente de comunicación. No aplana recursivamente cualquier estructura por sí solo y no puede usarse dentro de un generador asíncrono.

## Ejemplo verificable

```python
def parte():
    yield 1
    return 'listo'

def todo():
    estado = yield from parte()
    yield estado

print(list(todo()))
```

Salida esperada:

```text
[1, 'listo']
```

## Recuperación activa

> [!question]
> ¿Qué valor recibe estado cuando termina el subgenerador?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/reference/expressions.html).
