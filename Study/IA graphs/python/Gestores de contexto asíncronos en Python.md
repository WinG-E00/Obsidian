---
title: Gestores de contexto asíncronos en Python
type: atomic
python_version: "3.14"
aliases: []
tags:
  - python
  - estudio
up:
  - "[[Concurrencia en Python|Concurrencia en Python]]"
prerequisites:
  - "[[Sentencia with en Python|Sentencia with en Python]]"
  - "[[await en Python|await en Python]]"
  - "[[Gestores con contextlib.contextmanager en Python|Gestores con contextlib.contextmanager en Python]]"
parts: []
related:
  - "[[Tareas y TaskGroup en Python|Tareas y TaskGroup en Python]]"
  - "[[Cancelación asíncrona en Python|Cancelación asíncrona en Python]]"
contrasts: []
---

# Gestores de contexto asíncronos en Python

Forma parte de [[Concurrencia en Python|Concurrencia en Python]].

Antes de estudiar: [[Sentencia with en Python|Sentencia with en Python]] · [[await en Python|await en Python]] · [[Gestores con contextlib.contextmanager en Python|Gestores con contextlib.contextmanager en Python]].

async with permite esperar durante la entrada y la salida de un contexto.

Utiliza `__aenter__` y `__aexit__`, cuyos resultados son esperables. Las reglas de supresión de excepciones se parecen a las de [[Sentencia with en Python|with]], pero la adquisición y limpieza pueden suspenderse.

`contextlib.asynccontextmanager` permite escribirlos con un generador asíncrono que entrega una vez. La limpieza debe considerarse también bajo cancelación; los detalles dependen del recurso. TaskGroup usa este protocolo para esperar a sus tareas al abandonar el bloque.

## Ejemplo verificable

```python
import asyncio
from contextlib import asynccontextmanager

@asynccontextmanager
async def recurso():
    try:
        yield 'abierto'
    finally:
        await asyncio.sleep(0)
        print('cerrado')

async def main():
    async with recurso() as estado:
        print(estado)

asyncio.run(main())
```

Salida esperada:

```text
abierto
cerrado
```

## Recuperación activa

> [!question]
> ¿Qué operaciones del gestor pueden suspenderse en async with?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/library/contextlib.html).
