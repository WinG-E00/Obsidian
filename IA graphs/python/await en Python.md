---
title: "await en Python"
type: atomic
python_version: "3.14"
aliases: []
tags:
  - "python"
  - "estudio"
up:
  - "[[IA graphs/python/Concurrencia en Python|Concurrencia en Python]]"
prerequisites:
  - "[[IA graphs/python/Corrutinas y async def en Python|Corrutinas y async def en Python]]"
parts: []
related:
  - "[[IA graphs/python/Tareas y TaskGroup en Python|Tareas y TaskGroup en Python]]"
contrasts: []
---

# await en Python

Forma parte de [[IA graphs/python/Concurrencia en Python|Concurrencia en Python]].

Antes de estudiar: [[IA graphs/python/Corrutinas y async def en Python|Corrutinas y async def en Python]].

await obtiene el resultado de un objeto esperable y puede suspender la corrutina actual mientras está pendiente.

Los objetos esperables incluyen corrutinas, tareas y futuros compatibles. Esperar permite que el bucle de eventos avance otras tareas cuando la operación cede el control; no crea por sí solo otra tarea concurrente.

Dos llamadas consecutivas `await a(); await b()` son secuenciales. Para programar operaciones que progresen de forma solapada se usan [[IA graphs/python/Tareas y TaskGroup en Python|tareas]]. Código bloqueante como una espera síncrona larga impide que el mismo hilo atienda otras corrutinas.

## Ejemplo verificable

```python
import asyncio

async def doble(n):
    await asyncio.sleep(0)
    return n * 2

async def main():
    resultado = await doble(4)
    print(resultado)

asyncio.run(main())
```

Salida esperada:

```text
8
```

## Recuperación activa

> [!question]
> ¿Por qué dos await consecutivos no implican ejecución concurrente?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/reference/expressions.html).
