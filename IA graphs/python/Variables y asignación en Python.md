---
title: "Variables y asignación en Python"
type: atomic
python_version: "3.14"
aliases: []
tags:
  - "python"
  - "estudio"
up:
  - "[[IA graphs/python/Modelo de objetos en Python|Modelo de objetos en Python]]"
prerequisites:
  - "[[IA graphs/python/Expresiones y sentencias en Python|Expresiones y sentencias en Python]]"
parts: []
related:
  - "[[IA graphs/python/Mutabilidad en Python|Mutabilidad en Python]]"
  - "[[IA graphs/python/Identidad e igualdad en Python|Identidad e igualdad en Python]]"
contrasts: []
---

# Variables y asignación en Python

Forma parte de [[IA graphs/python/Modelo de objetos en Python|Modelo de objetos en Python]].

Antes de estudiar: [[IA graphs/python/Expresiones y sentencias en Python|Expresiones y sentencias en Python]].

Asignar vincula un nombre con un objeto.

En `a = [1]`, el nombre `a` queda asociado a una lista. `b = a` crea otro nombre para el mismo objeto; no copia sus elementos. Una reasignación posterior de `a` no cambia automáticamente lo que nombra `b`.

El tipo pertenece al objeto: un nombre puede pasar de referirse a un entero a referirse a un texto. Esto es tipado dinámico, pero no significa que todas las combinaciones sean válidas: `'2' + 3` produce `TypeError`. [[IA graphs/python/Mutabilidad en Python|Mutar]] y reasignar son acciones diferentes.

## Ejemplo verificable

```python
a = [1]
b = a
a = [2]
print(a, b)
```

Salida esperada:

```text
[2] [1]
```

## Recuperación activa

> [!question]
> ¿Por qué reasignar a no cambia la lista a la que apunta b?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/reference/executionmodel.html).
