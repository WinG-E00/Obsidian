---
title: "yield en Python"
type: atomic
python_version: "3.14"
aliases: []
tags:
  - "python"
  - "estudio"
up:
  - "[[IA graphs/python/Generadores en Python|Generadores en Python]]"
prerequisites:
  - "[[IA graphs/python/Definición de funciones en Python|Definición de funciones en Python]]"
  - "[[IA graphs/python/Iterador en Python|Iterador en Python]]"
parts: []
related:
  - "[[IA graphs/python/yield from en Python|yield from en Python]]"
  - "[[IA graphs/python/Retorno de funciones en Python|Retorno de funciones en Python]]"
contrasts: []
---

# yield en Python

Forma parte de [[IA graphs/python/Generadores en Python|Generadores en Python]].

Antes de estudiar: [[IA graphs/python/Definición de funciones en Python|Definición de funciones en Python]] · [[IA graphs/python/Iterador en Python|Iterador en Python]].

yield entrega un valor y suspende la ejecución de una función generadora.

Una función que contiene `yield` produce un generador al llamarla. Su cuerpo avanza cuando se solicita un elemento y conserva variables locales entre suspensiones. Al terminar, el consumidor recibe `StopIteration`.

Interfaz del generador: `next(g)` reanuda y obtiene un valor; `g.send(valor)` reanuda entregando valor a la expresión suspendida; `g.throw(excepcion)` introduce una excepción; `g.close()` solicita cierre mediante `GeneratorExit`. Para iniciar con `send`, el primer valor debe ser `None`. Desde 3.13, `close()` puede devolver el valor retornado durante el cierre. No debe seguir produciendo valores al recibir una solicitud de cierre.

## Ejemplo verificable

```python
def numeros():
    yield 1
    yield 2

g = numeros()
print(next(g))
print(list(g))
print(list(g))
```

Salida esperada:

```text
1
[2]
[]
```

## Recuperación activa

> [!question]
> ¿Cuándo empieza a ejecutarse el cuerpo de numeros?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/reference/expressions.html).
