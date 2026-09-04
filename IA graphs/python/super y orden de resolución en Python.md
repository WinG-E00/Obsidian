---
title: "super y orden de resolución en Python"
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
parts: []
related:
  - "[[IA graphs/python/Inicialización con __init__ en Python|Inicialización con __init__ en Python]]"
  - "[[IA graphs/python/Metaclases y creación de clases en Python|Metaclases y creación de clases en Python]]"
contrasts: []
---

# super y orden de resolución en Python

Forma parte de [[IA graphs/python/Herencia en Python|Herencia en Python]].

Antes de estudiar: [[IA graphs/python/Subclases y sobrescritura en Python|Subclases y sobrescritura en Python]].

super continúa la búsqueda de métodos según el orden de resolución de la clase.

`super()` dentro de un método ordinario usa la clase donde se definió y la instancia actual. No significa necesariamente «mi padre directo»: en herencia múltiple continúa por `__mro__`.

La cooperación requiere que las clases participantes usen firmas compatibles y deleguen según el diseño. Python usa un orden de resolución C3 que respeta restricciones de precedencia; jerarquías incompatibles fallan al definir la clase. `Clase.__mro__` es una tupla de clases de solo lectura.

## Ejemplo verificable

```python
class Base:
    def saludo(self):
        return 'hola'

class Detallada(Base):
    def saludo(self):
        return super().saludo() + ' mundo'

print(Detallada().saludo())
print([c.__name__ for c in Detallada.__mro__])
```

Salida esperada:

```text
hola mundo
['Detallada', 'Base', 'object']
```

## Recuperación activa

> [!question]
> ¿Por qué super no debe entenderse como una referencia fija a una única clase padre?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/library/functions.html).
