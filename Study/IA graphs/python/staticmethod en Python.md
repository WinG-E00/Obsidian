---
title: staticmethod en Python
type: atomic
python_version: "3.14"
aliases: []
tags:
  - python
  - estudio
up:
  - "[[Métodos y self en Python|Métodos y self en Python]]"
prerequisites:
  - "[[Métodos y self en Python|Métodos y self en Python]]"
  - "[[Decoradores en Python|Decoradores en Python]]"
parts: []
related:
  - "[[classmethod en Python|classmethod en Python]]"
contrasts:
  - "[[classmethod en Python|classmethod en Python]]"
---

# staticmethod en Python

Forma parte de [[Métodos y self en Python|Métodos y self en Python]].

Antes de estudiar: [[Métodos y self en Python|Métodos y self en Python]] · [[Decoradores en Python|Decoradores en Python]].

staticmethod conserva una función dentro de una clase sin vincularle self ni cls.

Sirve para una operación relacionada conceptualmente con la clase que no necesita estado de una instancia ni de la clase. Puede llamarse desde la clase o desde una instancia con los mismos argumentos explícitos.

El ejemplo expone `Utilidad.es_par(n: int) -> bool`, sin mutación. Si la función no gana significado por estar asociada a una clase, una [[Definición de funciones en Python|función de módulo]] puede ser más sencilla.

## Ejemplo verificable

```python
class Utilidad:
    @staticmethod
    def es_par(n):
        return n % 2 == 0

print(Utilidad.es_par(4))
print(Utilidad().es_par(5))
```

Salida esperada:

```text
True
False
```

## Para comparar

- [[classmethod en Python|classmethod en Python]]

## Recuperación activa

> [!question]
> ¿Qué argumentos agrega automáticamente staticmethod al llamar?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/library/functions.html).
