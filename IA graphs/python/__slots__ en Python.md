---
title: "__slots__ en Python"
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
  - "[[IA graphs/python/Subclases y sobrescritura en Python|Subclases y sobrescritura en Python]]"
parts: []
related:
  - "[[IA graphs/python/dataclasses en Python|dataclasses en Python]]"
  - "[[IA graphs/python/Mutabilidad en Python|Mutabilidad en Python]]"
contrasts: []
---

# __slots__ en Python

Forma parte de [[IA graphs/python/Protocolos del modelo de datos en Python|Protocolos del modelo de datos en Python]].

Antes de estudiar: [[IA graphs/python/Atributos de instancia y de clase en Python|Atributos de instancia y de clase en Python]] · [[IA graphs/python/Subclases y sobrescritura en Python|Subclases y sobrescritura en Python]].

__slots__ declara un conjunto de ubicaciones de atributos para las instancias de una clase.

Puede evitar un diccionario de instancia por defecto y reducir memoria en ciertos diseños. No congela los atributos declarados: siguen siendo editables. Si una base o subclase aporta `__dict__`, vuelve a ser posible tener atributos adicionales.

Las referencias débiles requieren soporte específico, por ejemplo incluir `__weakref__` cuando corresponde. No es una optimización universal: afecta herencia y flexibilidad. [[IA graphs/python/dataclasses en Python|dataclass(slots=True)]] puede generar esta estructura.

## Ejemplo verificable

```python
class Punto:
    __slots__ = ('x', 'y')
    def __init__(self, x, y):
        self.x = x
        self.y = y

p = Punto(1, 2)
p.x = 3
print(p.x, hasattr(p, '__dict__'))
```

Salida esperada:

```text
3 False
```

## Recuperación activa

> [!question]
> ¿Por qué __slots__ no hace inmutable a una instancia?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/reference/datamodel.html).
