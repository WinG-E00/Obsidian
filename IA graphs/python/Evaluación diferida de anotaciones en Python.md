---
title: "Evaluación diferida de anotaciones en Python"
type: atomic
python_version: "3.14"
aliases: []
tags:
  - "python"
  - "estudio"
up:
  - "[[IA graphs/python/Anotaciones de tipos en Python|Anotaciones de tipos en Python]]"
prerequisites:
  - "[[IA graphs/python/Anotaciones de funciones y variables en Python|Anotaciones de funciones y variables en Python]]"
  - "[[IA graphs/python/Ámbitos de nombres en Python|Ámbitos de nombres en Python]]"
parts: []
related:
  - "[[IA graphs/python/Alias de tipos en Python|Alias de tipos en Python]]"
contrasts: []
---

# Evaluación diferida de anotaciones en Python

Forma parte de [[IA graphs/python/Anotaciones de tipos en Python|Anotaciones de tipos en Python]].

Antes de estudiar: [[IA graphs/python/Anotaciones de funciones y variables en Python|Anotaciones de funciones y variables en Python]] · [[IA graphs/python/Ámbitos de nombres en Python|Ámbitos de nombres en Python]].

En Python 3.14, muchas anotaciones se evalúan cuando se solicitan, en vez de durante la definición.

Esto permite referencias a nombres definidos después, mientras estén disponibles al resolver la anotación. `annotationlib.get_annotations` ofrece distintos formatos; `typing.get_type_hints` resuelve anotaciones para usos de tipado y aplica transformaciones adicionales.

La evaluación puede ejecutar expresiones y generar errores; inspeccionar anotaciones arbitrarias no es solo leer texto. `from __future__ import annotations` conserva un comportamiento diferente basado en cadenas. Los ámbitos de anotación tienen reglas propias, por lo que [[IA graphs/python/Resolución de nombres LEGB en Python|LEGB]] no describe todos sus casos.

## Ejemplo verificable

```python
import annotationlib

def crear() -> Resultado:
    return Resultado()

class Resultado:
    pass

anotaciones = annotationlib.get_annotations(crear)
print(anotaciones['return'] is Resultado)
```

Salida esperada:

```text
True
```

## Recuperación activa

> [!question]
> ¿Por qué Resultado puede definirse después de crear en este ejemplo de Python 3.14?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/library/annotationlib.html).
