---
title: Definición de funciones en Python
type: atomic
python_version: "3.14"
aliases: []
tags:
  - python
  - estudio
up:
  - "[[Funciones en Python|Funciones en Python]]"
prerequisites:
  - "[[Variables y asignación en Python|Variables y asignación en Python]]"
parts: []
related:
  - "[[Retorno de funciones en Python|Retorno de funciones en Python]]"
  - "[[Parámetros y argumentos en Python|Parámetros y argumentos en Python]]"
  - "[[Decoradores en Python|Decoradores en Python]]"
contrasts: []
---

# Definición de funciones en Python

Forma parte de [[Funciones en Python|Funciones en Python]].

Antes de estudiar: [[Variables y asignación en Python|Variables y asignación en Python]].

def crea un objeto función y lo vincula con un nombre.

El cuerpo se ejecuta al llamar a la función, no al definirla. Los argumentos de la llamada se vinculan con sus parámetros y [[Retorno de funciones en Python|return]] entrega el resultado.

Las funciones son objetos: se pueden guardar en una lista, pasar como argumento o devolver desde otra función. La interfaz de una función depende de [[Parámetros y argumentos en Python|su firma]]. Atributos de inspección habituales: `__name__: str`, `__doc__: str | None`, `__defaults__: tuple | None` y `__annotations__: dict`; describen la función y no sustituyen su contrato.

## Ejemplo verificable

```python
def doble(numero):
    return numero * 2

operacion = doble
print(operacion(5))
print(operacion.__name__)
```

Salida esperada:

```text
10
doble
```

## Recuperación activa

> [!question]
> ¿Qué diferencia hay entre doble y doble(5)?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/tutorial/controlflow.html).
