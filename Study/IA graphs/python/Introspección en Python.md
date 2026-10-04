---
title: Introspección en Python
type: atomic
python_version: "3.14"
aliases: []
tags:
  - python
  - estudio
up:
  - "[[Protocolos del modelo de datos en Python|Protocolos del modelo de datos en Python]]"
prerequisites:
  - "[[Clases en Python|Clases en Python]]"
  - "[[Parámetros y argumentos en Python|Parámetros y argumentos en Python]]"
parts: []
related:
  - "[[Acceso dinámico a atributos en Python|Acceso dinámico a atributos en Python]]"
  - "[[Evaluación diferida de anotaciones en Python|Evaluación diferida de anotaciones en Python]]"
contrasts: []
---

# Introspección en Python

Forma parte de [[Protocolos del modelo de datos en Python|Protocolos del modelo de datos en Python]].

Antes de estudiar: [[Clases en Python|Clases en Python]] · [[Parámetros y argumentos en Python|Parámetros y argumentos en Python]].

La introspección consulta características de objetos durante la ejecución.

`type`, `isinstance`, `dir`, `vars` y el módulo `inspect` ayudan a explorar tipos, atributos y firmas. `dir` busca ser útil, no es una garantía de inventario completo; `vars(objeto)` requiere un `__dict__` apropiado.

`inspect.signature(funcion)` devuelve un objeto Signature; `parameters` describe parámetros y `return_annotation` la anotación de retorno. Algunas funciones incorporadas no proporcionan firma inspeccionable y pueden generar `ValueError` o `TypeError`. Consultar atributos y anotaciones puede ejecutar código, como explican [[Acceso dinámico a atributos en Python|el acceso dinámico]] y [[Evaluación diferida de anotaciones en Python|las anotaciones diferidas]].

## Ejemplo verificable

```python
import inspect

def saludar(nombre, *, formal=False):
    return nombre

firma = inspect.signature(saludar)
print(firma)
print(firma.parameters['formal'].default)
```

Salida esperada:

```text
(nombre, *, formal=False)
False
```

## Recuperación activa

> [!question]
> ¿Por qué dir(objeto) no reemplaza la documentación de su interfaz?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/library/inspect.html).
