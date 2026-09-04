---
title: "dataclasses en Python"
type: atomic
python_version: "3.14"
aliases: []
tags:
  - "python"
  - "estudio"
up:
  - "[[IA graphs/python/Orientación a objetos en Python|Orientación a objetos en Python]]"
prerequisites:
  - "[[IA graphs/python/Clases en Python|Clases en Python]]"
  - "[[IA graphs/python/Decoradores en Python|Decoradores en Python]]"
  - "[[IA graphs/python/Anotaciones de funciones y variables en Python|Anotaciones de funciones y variables en Python]]"
  - "[[IA graphs/python/Valores por defecto en Python|Valores por defecto en Python]]"
parts: []
related:
  - "[[IA graphs/python/Representación con repr y str en Python|Representación con repr y str en Python]]"
  - "[[IA graphs/python/__slots__ en Python|__slots__ en Python]]"
contrasts: []
---

# dataclasses en Python

Forma parte de [[IA graphs/python/Orientación a objetos en Python|Orientación a objetos en Python]].

Antes de estudiar: [[IA graphs/python/Clases en Python|Clases en Python]] · [[IA graphs/python/Decoradores en Python|Decoradores en Python]] · [[IA graphs/python/Anotaciones de funciones y variables en Python|Anotaciones de funciones y variables en Python]] · [[IA graphs/python/Valores por defecto en Python|Valores por defecto en Python]].

El decorador dataclass genera operaciones repetitivas para clases que representan datos.

A partir de campos anotados puede generar `__init__`, `__repr__` y `__eq__`. Opciones como `order=True`, `frozen=True` y `slots=True` añaden comportamientos concretos, no validación automática de los tipos anotados.

Para un campo mutable independiente se usa `field(default_factory=list)`, que llama a la fábrica por instancia. `frozen=True` restringe reasignaciones de campos, pero no congela recursivamente sus objetos internos. El ejemplo define `Pedido(etiqueta: str, items: list[str]=...)`, con ambos campos editables y métodos especiales generados.

## Ejemplo verificable

```python
from dataclasses import dataclass, field

@dataclass
class Pedido:
    etiqueta: str
    items: list[str] = field(default_factory=list)

a = Pedido('A')
b = Pedido('B')
a.items.append('libro')
print(a)
print(b.items)
```

Salida esperada:

```text
Pedido(etiqueta='A', items=['libro'])
[]
```

## Recuperación activa

> [!question]
> ¿Por qué default_factory=list evita compartir la lista entre instancias?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/library/dataclasses.html).
