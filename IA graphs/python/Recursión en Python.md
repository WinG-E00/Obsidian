---
title: "Recursión en Python"
type: atomic
python_version: "3.14"
aliases: []
tags:
  - "python"
  - "estudio"
up:
  - "[[IA graphs/python/Funciones en Python|Funciones en Python]]"
prerequisites:
  - "[[IA graphs/python/Definición de funciones en Python|Definición de funciones en Python]]"
  - "[[IA graphs/python/Condicional if en Python|Condicional if en Python]]"
  - "[[IA graphs/python/Retorno de funciones en Python|Retorno de funciones en Python]]"
  - "[[IA graphs/python/raise y encadenamiento en Python|raise y encadenamiento en Python]]"
parts: []
related:
  - "[[IA graphs/python/Bucle while en Python|Bucle while en Python]]"
contrasts: []
---

# Recursión en Python

Forma parte de [[IA graphs/python/Funciones en Python|Funciones en Python]].

Antes de estudiar: [[IA graphs/python/Definición de funciones en Python|Definición de funciones en Python]] · [[IA graphs/python/Condicional if en Python|Condicional if en Python]] · [[IA graphs/python/Retorno de funciones en Python|Retorno de funciones en Python]] · [[IA graphs/python/raise y encadenamiento en Python|raise y encadenamiento en Python]].

Una función recursiva resuelve un problema mediante llamadas al mismo procedimiento sobre casos menores.

Necesita un caso base y una reducción que acerque las llamadas a él. Cada llamada conserva su propio estado local hasta que termina.

Python tiene un límite de profundidad de recursión y no garantiza optimización de llamadas de cola. Para recorridos muy profundos puede convenir un [[IA graphs/python/Bucle while en Python|bucle]] con una pila explícita. No basta con aumentar el límite si el algoritmo no avanza hacia el caso base.

## Ejemplo verificable

```python
def factorial(n):
    if n < 0:
        raise ValueError('n debe ser no negativo')
    if n == 0:
        return 1
    return n * factorial(n - 1)

print(factorial(5))
```

Salida esperada:

```text
120
```

## Recuperación activa

> [!question]
> ¿Qué parte garantiza que factorial deje de llamarse a sí misma?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/reference/executionmodel.html).
