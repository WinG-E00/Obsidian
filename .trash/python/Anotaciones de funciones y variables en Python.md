---
title: Anotaciones de funciones y variables en Python
type: atomic
python_version: "3.14"
aliases: []
tags:
  - python
  - estudio
up:
  - "[[Anotaciones de tipos en Python|Anotaciones de tipos en Python]]"
prerequisites:
  - "[[Definición de funciones en Python|Definición de funciones en Python]]"
  - "[[Variables y asignación en Python|Variables y asignación en Python]]"
parts: []
related:
  - "[[Genéricos en Python|Genéricos en Python]]"
  - "[[Evaluación diferida de anotaciones en Python|Evaluación diferida de anotaciones en Python]]"
contrasts: []
---

# Anotaciones de funciones y variables en Python

Forma parte de [[Anotaciones de tipos en Python|Anotaciones de tipos en Python]].

Antes de estudiar: [[Definición de funciones en Python|Definición de funciones en Python]] · [[Variables y asignación en Python|Variables y asignación en Python]].

Las anotaciones describen tipos esperados para lectores, herramientas y verificadores estáticos.

Se escriben como `nombre: Tipo` y `def f(x: Tipo) -> Retorno`. Python no impone esos tipos automáticamente en una llamada. `list[int]` describe el tipo de los elementos para análisis, pero no crea una lista ni valida su contenido por sí solo.

Una anotación de variable sin asignación no garantiza que exista un valor vinculado. Herramientas externas como mypy o Pyright pueden analizar contratos; no forman parte del núcleo que ejecuta cada operación. [[Evaluación diferida de anotaciones en Python|La evaluación de anotaciones]] también depende de la versión.

## Ejemplo verificable

```python
def identidad(valor: int) -> int:
    return valor

print(identidad('texto'))
```

Salida esperada:

```text
texto
```

## Recuperación activa

> [!question]
> ¿Por qué una función anotada con int puede recibir un str sin un error automático de Python?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/library/typing.html).
