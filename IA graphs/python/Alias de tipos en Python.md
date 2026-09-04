---
title: "Alias de tipos en Python"
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
  - "[[IA graphs/python/tuple en Python|tuple en Python]]"
parts: []
related:
  - "[[IA graphs/python/Genéricos en Python|Genéricos en Python]]"
  - "[[IA graphs/python/dataclasses en Python|dataclasses en Python]]"
contrasts: []
---

# Alias de tipos en Python

Forma parte de [[IA graphs/python/Anotaciones de tipos en Python|Anotaciones de tipos en Python]].

Antes de estudiar: [[IA graphs/python/Anotaciones de funciones y variables en Python|Anotaciones de funciones y variables en Python]] · [[IA graphs/python/tuple en Python|tuple en Python]].

Un alias da un nombre reutilizable a una expresión de tipo.

Desde Python 3.12, `type Coordenada = tuple[float, float]` crea un alias explícito y admite parámetros genéricos. El alias es un objeto `TypeAliasType`; `__name__: str`, `__type_params__: tuple` y `__value__` permiten inspeccionarlo, este último con evaluación diferida.

No crea una clase de datos ni convierte valores automáticamente. Una asignación antigua como `Coordenada = tuple[float, float]` también puede ser reconocida como alias por herramientas, pero tiene otra representación en tiempo de ejecución. `NewType` declara distinciones nominales estáticas y tampoco valida por sí solo.

## Ejemplo verificable

```python
type Coordenada = tuple[float, float]
punto: Coordenada = (1.0, 2.0)
print(punto)
print(Coordenada.__name__)
```

Salida esperada:

```text
(1.0, 2.0)
Coordenada
```

## Recuperación activa

> [!question]
> ¿Por qué un alias de tipo no reemplaza a una clase con comportamiento?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/reference/simple_stmts.html).
