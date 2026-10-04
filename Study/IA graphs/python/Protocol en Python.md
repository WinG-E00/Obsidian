---
title: Protocol en Python
type: atomic
python_version: "3.14"
aliases: []
tags:
  - python
  - estudio
up:
  - "[[Anotaciones de tipos en Python|Anotaciones de tipos en Python]]"
prerequisites:
  - "[[Anotaciones de funciones y variables en Python|Anotaciones de funciones y variables en Python]]"
  - "[[Polimorfismo y duck typing en Python|Polimorfismo y duck typing en Python]]"
parts: []
related:
  - "[[Clases abstractas en Python|Clases abstractas en Python]]"
contrasts:
  - "[[Clases abstractas en Python|Clases abstractas en Python]]"
---

# Protocol en Python

Forma parte de [[Anotaciones de tipos en Python|Anotaciones de tipos en Python]].

Antes de estudiar: [[Anotaciones de funciones y variables en Python|Anotaciones de funciones y variables en Python]] · [[Polimorfismo y duck typing en Python|Polimorfismo y duck typing en Python]].

Protocol describe una interfaz estructural que un objeto puede satisfacer sin heredar de ella.

Un verificador estático comprueba que el objeto ofrezca los atributos y métodos requeridos con firmas compatibles. Esto formaliza [[Polimorfismo y duck typing en Python|duck typing]].

`@runtime_checkable` permite determinadas comprobaciones con `isinstance`, pero estas se centran en presencia de miembros, no en validar completamente sus firmas ni su conducta. El ejemplo define el contrato `leer() -> str` y una implementación compatible sin base compartida.

## Ejemplo verificable

```python
from typing import Protocol

class Lector(Protocol):
    def leer(self) -> str: ...

class Texto:
    def leer(self) -> str:
        return 'dato'

def obtener(fuente: Lector) -> str:
    return fuente.leer()

print(obtener(Texto()))
```

Salida esperada:

```text
dato
```

## Para comparar

- [[Clases abstractas en Python|Clases abstractas en Python]]

## Recuperación activa

> [!question]
> ¿Qué se gana al expresar duck typing mediante Protocol?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/library/typing.html).
