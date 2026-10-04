---
title: Módulo en Python
type: atomic
python_version: "3.14"
aliases: []
tags:
  - python
  - estudio
up:
  - "[[Módulos y paquetes en Python|Módulos y paquetes en Python]]"
prerequisites:
  - "[[Resolución de nombres LEGB en Python|Resolución de nombres LEGB en Python]]"
parts: []
related:
  - "[[import en Python|import en Python]]"
  - "[[Paquetes en Python|Paquetes en Python]]"
  - "[[Dependencias y pip en Python|Dependencias y pip en Python]]"
contrasts: []
---

# Módulo en Python

Forma parte de [[Módulos y paquetes en Python|Módulos y paquetes en Python]].

Antes de estudiar: [[Resolución de nombres LEGB en Python|Resolución de nombres LEGB en Python]].

Un módulo es una unidad de código con su propio espacio de nombres.

Un archivo `.py` suele definir un módulo, aunque también existen módulos incorporados o provistos por extensiones. Sus funciones, clases y variables se acceden como atributos después de [[import en Python|importarlo]].

Propiedades de inspección: `__name__: str` identifica su nombre; `__doc__: str | None` contiene documentación; `__spec__` describe su importación. `__file__` suele indicar una ruta, pero no todos los módulos lo tienen. Los nombres globales de una función pertenecen al módulo donde se definió.

Un módulo no es lo mismo que una distribución instalada con pip: una distribución puede aportar varios paquetes importables.

## Ejemplo verificable

```python
import math
print(math.__name__)
print(math.isqrt(81))
```

Salida esperada:

```text
math
9
```

## Recuperación activa

> [!question]
> ¿Qué espacio de nombres consulta una función cuando lee un global?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/tutorial/modules.html).
