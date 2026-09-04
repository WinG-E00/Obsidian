---
title: "Descriptores en Python"
type: atomic
python_version: "3.14"
aliases: []
tags:
  - "python"
  - "estudio"
up:
  - "[[IA graphs/python/Protocolos del modelo de datos en Python|Protocolos del modelo de datos en Python]]"
prerequisites:
  - "[[IA graphs/python/Atributos de instancia y de clase en Python|Atributos de instancia y de clase en Python]]"
  - "[[IA graphs/python/Clases en Python|Clases en Python]]"
parts: []
related:
  - "[[IA graphs/python/property en Python|property en Python]]"
  - "[[IA graphs/python/Métodos y self en Python|Métodos y self en Python]]"
  - "[[IA graphs/python/Acceso dinámico a atributos en Python|Acceso dinámico a atributos en Python]]"
contrasts: []
---

# Descriptores en Python

Forma parte de [[IA graphs/python/Protocolos del modelo de datos en Python|Protocolos del modelo de datos en Python]].

Antes de estudiar: [[IA graphs/python/Atributos de instancia y de clase en Python|Atributos de instancia y de clase en Python]] · [[IA graphs/python/Clases en Python|Clases en Python]].

Un descriptor personaliza el acceso a un atributo cuando se encuentra en una clase.

Define `__get__`, `__set__` o `__delete__`. Un descriptor de datos define escritura o eliminación y tiene prioridad frente al diccionario de instancia; un descriptor sin esas operaciones puede ser ocultado por un atributo de instancia.

[[IA graphs/python/property en Python|property]] y [[IA graphs/python/Métodos y self en Python|la vinculación de métodos]] se apoyan en este mecanismo. `__get__(self, instancia, clase)` recibe `instancia=None` cuando se accede desde la clase. El ejemplo define un descriptor de solo lectura práctica `Doble`: sin setter es un descriptor no de datos y se podría ocultar asignando en la instancia.

## Ejemplo verificable

```python
class Doble:
    def __get__(self, instancia, clase=None):
        if instancia is None:
            return self
        return instancia.base * 2

class Valor:
    doble = Doble()
    def __init__(self, base):
        self.base = base

print(Valor(4).doble)
```

Salida esperada:

```text
8
```

## Recuperación activa

> [!question]
> ¿Qué cambia en la prioridad si un descriptor define __set__?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/howto/descriptor.html).
