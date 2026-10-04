---
title: TypedDict en Python
type: atomic
python_version: "3.14"
aliases: []
tags:
  - python
  - estudio
up:
  - "[[Anotaciones de tipos en Python|Anotaciones de tipos en Python]]"
prerequisites:
  - "[[Anotaciones de funciones y variables en Python|Anotaciones de funciones y variables en Python]]"
  - "[[dict en Python|dict en Python]]"
parts: []
related:
  - "[[Uniones y valores opcionales en Python|Uniones y valores opcionales en Python]]"
  - "[[Serialización con json en Python|Serialización con json en Python]]"
contrasts: []
---

# TypedDict en Python

Forma parte de [[Anotaciones de tipos en Python|Anotaciones de tipos en Python]].

Antes de estudiar: [[Anotaciones de funciones y variables en Python|Anotaciones de funciones y variables en Python]] · [[dict en Python|dict en Python]].

TypedDict describe las claves y tipos esperados de un diccionario para análisis estático.

En tiempo de ejecución los valores siguen siendo dict ordinarios. `NotRequired[T]` marca una clave que puede faltar; es diferente de una clave obligatoria cuyo valor admite [[Uniones y valores opcionales en Python|None]]. `total=False` cambia la obligatoriedad predeterminada de los campos declarados.

No valida datos recibidos de JSON ni impide claves extra al ejecutar Python. Si los datos son externos, hace falta comprobarlos en el código o usar una herramienta de validación explícita. El ejemplo tiene `nombre: str` obligatorio y `edad: int` opcional.

## Ejemplo verificable

```python
from typing import TypedDict, NotRequired

class Usuario(TypedDict):
    nombre: str
    edad: NotRequired[int]

usuario: Usuario = {'nombre': 'Ana'}
print(type(usuario).__name__, usuario['nombre'])
```

Salida esperada:

```text
dict Ana
```

## Recuperación activa

> [!question]
> ¿En qué se diferencia una clave NotRequired de una clave cuyo tipo es int | None?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/library/typing.html).
