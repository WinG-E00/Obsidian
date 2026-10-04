---
title: Tareas y TaskGroup en Python
type: atomic
python_version: "3.14"
aliases: []
tags:
  - python
  - estudio
up:
  - "[[Concurrencia en Python|Concurrencia en Python]]"
prerequisites:
  - "[[await en Python|await en Python]]"
  - "[[Gestores de contexto asíncronos en Python|Gestores de contexto asíncronos en Python]]"
parts: []
related:
  - "[[ExceptionGroup y except estrella en Python|ExceptionGroup y except estrella en Python]]"
  - "[[Cancelación asíncrona en Python|Cancelación asíncrona en Python]]"
contrasts: []
---

# Tareas y TaskGroup en Python

Forma parte de [[Concurrencia en Python|Concurrencia en Python]].

Antes de estudiar: [[await en Python|await en Python]] · [[Gestores de contexto asíncronos en Python|Gestores de contexto asíncronos en Python]].

Una tarea programa el avance de una corrutina dentro de un bucle de eventos.

`asyncio.create_task(coro)` crea una Task y conviene conservar una referencia mientras se necesita. `TaskGroup`, disponible desde 3.11, delimita un conjunto de tareas: al salir espera su finalización y, si una falla de ciertas formas, cancela las restantes y reúne errores.

Interfaz útil de Task: `done() -> bool`, `result() -> valor` cuando terminó correctamente, `exception() -> excepción | None` al finalizar, `cancel() -> bool` para solicitar cancelación y `cancelled() -> bool` para consultar el resultado. Consultar un resultado pendiente genera `InvalidStateError`; el fallo original puede propagarse al obtenerlo.

## Ejemplo verificable

```python
import asyncio

async def doble(n):
    await asyncio.sleep(0)
    return n * 2

async def main():
    async with asyncio.TaskGroup() as grupo:
        a = grupo.create_task(doble(2))
        b = grupo.create_task(doble(3))
    print(a.result(), b.result())

asyncio.run(main())
```

Salida esperada:

```text
4 6
```

## Recuperación activa

> [!question]
> ¿Qué garantiza la salida normal del bloque TaskGroup?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/library/asyncio-task.html).
