---
title: "True en Python"
type: atomic
python_version: "3.14"
aliases: []
tags:
  - "python"
  - "estudio"
up:
  - "[[IA graphs/python/bool en Python|bool en Python]]"
prerequisites: []
parts: []
related:
  - "[[IA graphs/python/False en Python|False en Python]]"
  - "[[IA graphs/python/Evaluación booleana en Python|Evaluación booleana en Python]]"
contrasts:
  - "[[IA graphs/python/False en Python|False en Python]]"
---

# True en Python

Forma parte de [[IA graphs/python/bool en Python|bool en Python]].

True es el valor booleano que representa una condición verdadera.

Es una constante del lenguaje y una instancia de [[IA graphs/python/bool en Python|bool]]. Una comparación como `4 > 2` produce este valor. Escribir `true` en minúsculas busca un nombre ordinario, que puede no existir.

Se puede asignar `activo = True`, pero no reasignar la constante `True`. Para controlar un bloque suele bastar `if activo:`; comparar con `== True` añade una operación innecesaria cuando solo interesa [[IA graphs/python/Evaluación booleana en Python|el valor de verdad]].

## Ejemplo verificable

```python
activo = 4 > 2
print(activo)
print(type(activo).__name__)
```

Salida esperada:

```text
True
bool
```

## Para comparar

- [[IA graphs/python/False en Python|False en Python]]

## Recuperación activa

> [!question]
> ¿Cuál es el tipo del resultado de 4 > 2?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/library/stdtypes.html).
