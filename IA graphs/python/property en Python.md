---
title: "property en Python"
type: atomic
python_version: "3.14"
aliases: []
tags:
  - "python"
  - "estudio"
up:
  - "[[IA graphs/python/Orientación a objetos en Python|Orientación a objetos en Python]]"
prerequisites:
  - "[[IA graphs/python/Atributos de instancia y de clase en Python|Atributos de instancia y de clase en Python]]"
  - "[[IA graphs/python/Decoradores en Python|Decoradores en Python]]"
parts: []
related:
  - "[[IA graphs/python/Encapsulación y convenciones de acceso en Python|Encapsulación y convenciones de acceso en Python]]"
  - "[[IA graphs/python/Descriptores en Python|Descriptores en Python]]"
contrasts: []
---

# property en Python

Forma parte de [[IA graphs/python/Orientación a objetos en Python|Orientación a objetos en Python]].

Antes de estudiar: [[IA graphs/python/Atributos de instancia y de clase en Python|Atributos de instancia y de clase en Python]] · [[IA graphs/python/Decoradores en Python|Decoradores en Python]].

property permite ejecutar código al leer, escribir o eliminar un atributo.

`@property` define la lectura y `@nombre.setter` añade escritura validada. Si no existe setter, asignar produce `AttributeError`. El mecanismo se apoya en [[IA graphs/python/Descriptores en Python|descriptores]].

El ejemplo define `Termometro()` con propiedad editable `grados: int | float`, valor inicial 0, y rechaza valores menores que -273.15. El setter modifica `_grados` y devuelve `None`; usar el mismo atributo `grados` internamente en el setter provocaría recursión. `property` también admite un eliminador y documentación.

## Ejemplo verificable

```python
class Termometro:
    def __init__(self):
        self._grados = 0
    @property
    def grados(self):
        return self._grados
    @grados.setter
    def grados(self, valor):
        if valor < -273.15:
            raise ValueError('temperatura inválida')
        self._grados = valor

t = Termometro()
t.grados = 20
print(t.grados)
```

Salida esperada:

```text
20
```

## Recuperación activa

> [!question]
> ¿Qué parte de la property se ejecuta al asignar t.grados = 20?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/library/functions.html).
