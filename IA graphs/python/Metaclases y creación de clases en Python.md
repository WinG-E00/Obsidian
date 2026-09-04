---
title: "Metaclases y creación de clases en Python"
type: atomic
python_version: "3.14"
aliases: []
tags:
  - "python"
  - "estudio"
up:
  - "[[IA graphs/python/Protocolos del modelo de datos en Python|Protocolos del modelo de datos en Python]]"
prerequisites:
  - "[[IA graphs/python/Clases en Python|Clases en Python]]"
  - "[[IA graphs/python/Creación con __new__ en Python|Creación con __new__ en Python]]"
  - "[[IA graphs/python/super y orden de resolución en Python|super y orden de resolución en Python]]"
parts: []
related:
  - "[[IA graphs/python/Decoradores en Python|Decoradores en Python]]"
contrasts: []
---

# Metaclases y creación de clases en Python

Forma parte de [[IA graphs/python/Protocolos del modelo de datos en Python|Protocolos del modelo de datos en Python]].

Antes de estudiar: [[IA graphs/python/Clases en Python|Clases en Python]] · [[IA graphs/python/Creación con __new__ en Python|Creación con __new__ en Python]] · [[IA graphs/python/super y orden de resolución en Python|super y orden de resolución en Python]].

Una metaclase es el tipo de una clase y puede intervenir en su construcción.

La metaclase usual es `type`. El proceso prepara un espacio de nombres, ejecuta el cuerpo de la clase y crea el objeto clase; después se aplican sus decoradores. Una metaclase personalizada puede intervenir mediante `__prepare__`, `__new__` o `__init__`.

Para muchas necesidades basta `__init_subclass__`, que reacciona a la definición de subclases, o un decorador de clase. Las metaclases incompatibles pueden impedir una herencia múltiple. Esto es distinto de [[IA graphs/python/Creación con __new__ en Python|crear una instancia]].

## Ejemplo verificable

```python
class Marca(type):
    def __new__(mcls, nombre, bases, espacio):
        espacio['categoria'] = 'registrada'
        return super().__new__(mcls, nombre, bases, espacio)

class Modelo(metaclass=Marca):
    pass

print(type(Modelo).__name__, Modelo.categoria)
```

Salida esperada:

```text
Marca registrada
```

## Recuperación activa

> [!question]
> ¿Qué objeto crea una metaclase y qué objeto crea normalmente una clase?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/reference/datamodel.html).
