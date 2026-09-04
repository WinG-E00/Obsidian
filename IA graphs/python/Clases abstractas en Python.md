---
title: "Clases abstractas en Python"
type: atomic
python_version: "3.14"
aliases: []
tags:
  - "python"
  - "estudio"
up:
  - "[[IA graphs/python/Herencia en Python|Herencia en Python]]"
prerequisites:
  - "[[IA graphs/python/Subclases y sobrescritura en Python|Subclases y sobrescritura en Python]]"
  - "[[IA graphs/python/Decoradores en Python|Decoradores en Python]]"
parts: []
related:
  - "[[IA graphs/python/Protocol en Python|Protocol en Python]]"
contrasts:
  - "[[IA graphs/python/Protocol en Python|Protocol en Python]]"
---

# Clases abstractas en Python

Forma parte de [[IA graphs/python/Herencia en Python|Herencia en Python]].

Antes de estudiar: [[IA graphs/python/Subclases y sobrescritura en Python|Subclases y sobrescritura en Python]] · [[IA graphs/python/Decoradores en Python|Decoradores en Python]].

Una clase abstracta puede exigir que las subclases concreten ciertas operaciones.

`abc.ABC` y `@abstractmethod` marcan métodos pendientes. Intentar instanciar una clase con métodos abstractos sin implementar provoca `TypeError`. Un método abstracto puede contener una implementación reutilizable.

Esto organiza contratos dentro de una jerarquía. No comprueba automáticamente que una implementación produzca el resultado correcto ni todos los tipos de sus parámetros. Contrasta con [[IA graphs/python/Protocol en Python|Protocol]], que describe compatibilidad estructural para análisis estático.

## Ejemplo verificable

```python
from abc import ABC, abstractmethod

class Fuente(ABC):
    @abstractmethod
    def leer(self):
        raise NotImplementedError

class Fija(Fuente):
    def leer(self):
        return 'dato'

print(Fija().leer())
```

Salida esperada:

```text
dato
```

## Para comparar

- [[IA graphs/python/Protocol en Python|Protocol en Python]]

## Recuperación activa

> [!question]
> ¿Qué impide ABC que una clase ordinaria no impediría automáticamente?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/library/abc.html).
