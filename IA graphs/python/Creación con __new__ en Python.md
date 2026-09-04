---
title: "Creación con __new__ en Python"
type: atomic
python_version: "3.14"
aliases: []
tags:
  - "python"
  - "estudio"
up:
  - "[[IA graphs/python/Métodos especiales en Python|Métodos especiales en Python]]"
prerequisites:
  - "[[IA graphs/python/Inicialización con __init__ en Python|Inicialización con __init__ en Python]]"
  - "[[IA graphs/python/int en Python|int en Python]]"
  - "[[IA graphs/python/super y orden de resolución en Python|super y orden de resolución en Python]]"
parts: []
related:
  - "[[IA graphs/python/Metaclases y creación de clases en Python|Metaclases y creación de clases en Python]]"
contrasts:
  - "[[IA graphs/python/Inicialización con __init__ en Python|Inicialización con __init__ en Python]]"
---

# Creación con __new__ en Python

Forma parte de [[IA graphs/python/Métodos especiales en Python|Métodos especiales en Python]].

Antes de estudiar: [[IA graphs/python/Inicialización con __init__ en Python|Inicialización con __init__ en Python]] · [[IA graphs/python/int en Python|int en Python]] · [[IA graphs/python/super y orden de resolución en Python|super y orden de resolución en Python]].

__new__ crea o elige el objeto que devolverá una llamada a una clase.

Firma habitual: `__new__(cls, argumentos...) -> objeto`. Si devuelve una instancia de cls, normalmente se ejecuta luego [[IA graphs/python/Inicialización con __init__ en Python|__init__]]; si devuelve un objeto de otro tipo, ese paso no se aplica del mismo modo.

Es especialmente relevante al heredar de tipos inmutables cuyo valor debe establecerse al crear el objeto. La mayoría de clases de aplicación solo necesita `__init__`. El ejemplo crea `Positivo(valor)` como subtipo de int con valor absoluto, sin atributos de instancia adicionales.

## Ejemplo verificable

```python
class Positivo(int):
    def __new__(cls, valor):
        return super().__new__(cls, abs(valor))

print(Positivo(-5))
```

Salida esperada:

```text
5
```

## Para comparar

- [[IA graphs/python/Inicialización con __init__ en Python|Inicialización con __init__ en Python]]

## Recuperación activa

> [!question]
> ¿Por qué modificar el valor de un int personalizado requiere intervenir en la creación?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/reference/datamodel.html).
