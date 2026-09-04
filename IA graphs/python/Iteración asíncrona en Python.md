---
title: "Iteración asíncrona en Python"
type: atomic
python_version: "3.14"
aliases: []
tags:
  - "python"
  - "estudio"
up:
  - "[[IA graphs/python/Concurrencia en Python|Concurrencia en Python]]"
prerequisites:
  - "[[IA graphs/python/Iterador en Python|Iterador en Python]]"
  - "[[IA graphs/python/yield en Python|yield en Python]]"
  - "[[IA graphs/python/await en Python|await en Python]]"
parts: []
related:
  - "[[IA graphs/python/Comprensiones de listas en Python|Comprensiones de listas en Python]]"
contrasts: []
---

# Iteración asíncrona en Python

Forma parte de [[IA graphs/python/Concurrencia en Python|Concurrencia en Python]].

Antes de estudiar: [[IA graphs/python/Iterador en Python|Iterador en Python]] · [[IA graphs/python/yield en Python|yield en Python]] · [[IA graphs/python/await en Python|await en Python]].

async for recorre una fuente cuyo siguiente elemento puede requerir espera.

Un iterable asíncrono proporciona `__aiter__`; el iterador proporciona `__anext__`, cuyo resultado se espera y que indica finalización con `StopAsyncIteration`. Un `async def` con `yield` crea un generador asíncrono.

No se puede consumir directamente con `list()` o un `for` síncrono. Existen comprensiones asíncronas y los incorporados `aiter` y `anext`. Un generador asíncrono no puede hacer `return valor` ni usar `yield from`.

## Ejemplo verificable

```python
import asyncio

async def fuente():
    for n in range(3):
        await asyncio.sleep(0)
        yield n

async def main():
    datos = [n async for n in fuente()]
    print(datos)

asyncio.run(main())
```

Salida esperada:

```text
[0, 1, 2]
```

## Recuperación activa

> [!question]
> ¿Qué espera async for que un for ordinario no espera?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/reference/datamodel.html).
