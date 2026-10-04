---
title: Corrutinas y async def en Python
type: atomic
python_version: "3.14"
aliases: []
tags:
  - python
  - estudio
up:
  - "[[Concurrencia en Python|Concurrencia en Python]]"
prerequisites:
  - "[[Definición de funciones en Python|Definición de funciones en Python]]"
  - "[[Retorno de funciones en Python|Retorno de funciones en Python]]"
parts: []
related:
  - "[[await en Python|await en Python]]"
  - "[[Tareas y TaskGroup en Python|Tareas y TaskGroup en Python]]"
  - "[[GIL y ejecución sin GIL en Python|GIL y ejecución sin GIL en Python]]"
contrasts: []
---

# Corrutinas y async def en Python

Forma parte de [[Concurrencia en Python|Concurrencia en Python]].

Antes de estudiar: [[Definición de funciones en Python|Definición de funciones en Python]] · [[Retorno de funciones en Python|Retorno de funciones en Python]].

async def define una función de corrutina cuya ejecución puede suspenderse.

Llamarla produce un objeto corrutina, no el resultado final. Para avanzar debe esperarse con [[await en Python|await]] o ejecutarse mediante un sistema de coordinación como asyncio.

`asyncio.run(awaitable)` crea y gestiona el bucle de eventos para un programa síncrono de entrada; no se llama dentro de otro bucle que ya está ejecutándose en el mismo hilo. En ciertos REPL y notebooks puede usarse `await` directamente. Escribir `async` no convierte trabajo de CPU en trabajo paralelo.

## Ejemplo verificable

```python
import asyncio

async def responder():
    return 7

print(asyncio.run(responder()))
```

Salida esperada:

```text
7
```

## Recuperación activa

> [!question]
> ¿Qué devuelve llamar a una función definida con async def antes de esperarla?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/library/asyncio-task.html).
