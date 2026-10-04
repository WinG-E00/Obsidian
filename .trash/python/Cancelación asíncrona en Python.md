---
title: Cancelación asíncrona en Python
type: atomic
python_version: "3.14"
aliases: []
tags:
  - python
  - estudio
up:
  - "[[Concurrencia en Python|Concurrencia en Python]]"
prerequisites:
  - "[[Tareas y TaskGroup en Python|Tareas y TaskGroup en Python]]"
  - "[[finally en Python|finally en Python]]"
parts: []
related:
  - "[[Objeto excepción y propagación en Python|Objeto excepción y propagación en Python]]"
contrasts: []
---

# Cancelación asíncrona en Python

Forma parte de [[Concurrencia en Python|Concurrencia en Python]].

Antes de estudiar: [[Tareas y TaskGroup en Python|Tareas y TaskGroup en Python]] · [[finally en Python|finally en Python]].

Cancelar una tarea solicita que interrumpa su trabajo mediante CancelledError.

`task.cancel()` no destruye inmediatamente la tarea. La excepción se introduce cuando la corrutina puede reanudarse; la tarea debe tener oportunidad de atenderla. Se usa `try/finally` para liberar recursos y, si se captura la cancelación, normalmente se vuelve a propagar.

`asyncio.CancelledError` deriva directamente de BaseException, por lo que `except Exception` no la captura. Ignorar la cancelación puede romper las expectativas de [[Tareas y TaskGroup en Python|TaskGroup]] y de los tiempos de espera. `asyncio.timeout` ofrece un contexto de plazo y convierte la cancelación que gestiona en `TimeoutError` al salir.

## Ejemplo verificable

```python
import asyncio

async def trabajo():
    try:
        await asyncio.Event().wait()
    finally:
        print('limpieza')

async def main():
    tarea = asyncio.create_task(trabajo())
    await asyncio.sleep(0)
    tarea.cancel()
    try:
        await tarea
    except asyncio.CancelledError:
        print('cancelada')

asyncio.run(main())
```

Salida esperada:

```text
limpieza
cancelada
```

## Recuperación activa

> [!question]
> ¿Por qué cancelar una tarea no equivale a destruirla inmediatamente?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/library/asyncio-task.html).
