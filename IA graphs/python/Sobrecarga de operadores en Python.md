---
title: "Sobrecarga de operadores en Python"
type: atomic
python_version: "3.14"
aliases: []
tags:
  - "python"
  - "estudio"
up:
  - "[[IA graphs/python/Métodos especiales en Python|Métodos especiales en Python]]"
prerequisites:
  - "[[IA graphs/python/Clases en Python|Clases en Python]]"
  - "[[IA graphs/python/Operadores aritméticos en Python|Operadores aritméticos en Python]]"
parts: []
related:
  - "[[IA graphs/python/NotImplemented en Python|NotImplemented en Python]]"
  - "[[IA graphs/python/Hashabilidad en Python|Hashabilidad en Python]]"
  - "[[IA graphs/python/Asignación aumentada en Python|Asignación aumentada en Python]]"
contrasts: []
---

# Sobrecarga de operadores en Python

Forma parte de [[IA graphs/python/Métodos especiales en Python|Métodos especiales en Python]].

Antes de estudiar: [[IA graphs/python/Clases en Python|Clases en Python]] · [[IA graphs/python/Operadores aritméticos en Python|Operadores aritméticos en Python]].

Una clase puede definir qué significan operaciones como + o == para sus instancias.

`__add__` participa en `+`, `__eq__` en `==` y `__iadd__` en `+=`. Las operaciones reflejadas como `__radd__` permiten al otro operando intervenir según las reglas de despacho.

Cuando el tipo del otro operando no es compatible, devolver [[IA graphs/python/NotImplemented en Python|NotImplemented]] permite al intérprete intentar alternativas. No equivale a lanzar `NotImplementedError`. Al definir igualdad, hay que mantener el contrato de [[IA graphs/python/Hashabilidad en Python|hash]]; Python deshabilita normalmente el hash heredado cuando se define `__eq__` sin un `__hash__` explícito.

## Ejemplo verificable

```python
class Distancia:
    def __init__(self, metros):
        self.metros = metros
    def __add__(self, otra):
        if not isinstance(otra, Distancia):
            return NotImplemented
        return Distancia(self.metros + otra.metros)

print((Distancia(2) + Distancia(3)).metros)
```

Salida esperada:

```text
5
```

## Recuperación activa

> [!question]
> ¿Qué oportunidad ofrece al intérprete devolver NotImplemented?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/reference/datamodel.html).
