---
title: GIL y ejecución sin GIL en Python
type: atomic
python_version: "3.14"
aliases: []
tags:
  - python
  - estudio
up:
  - "[[Concurrencia en Python|Concurrencia en Python]]"
prerequisites:
  - "[[Hilos y estado compartido en Python|Hilos y estado compartido en Python]]"
  - "[[Corrutinas y async def en Python|Corrutinas y async def en Python]]"
parts: []
related:
  - "[[Procesos en Python|Procesos en Python]]"
contrasts: []
---

# GIL y ejecución sin GIL en Python

Forma parte de [[Concurrencia en Python|Concurrencia en Python]].

Antes de estudiar: [[Hilos y estado compartido en Python|Hilos y estado compartido en Python]] · [[Corrutinas y async def en Python|Corrutinas y async def en Python]].

El GIL es una propiedad de determinadas compilaciones de CPython, no una regla universal del lenguaje.

En una compilación convencional, limita la ejecución simultánea de código Python por hilos dentro de un intérprete, aunque se libera en muchas operaciones de E/S y ciertas extensiones. No vuelve atómicas todas las secuencias de aplicación.

Existen compilaciones free-threaded de CPython que pueden ejecutarse sin GIL; en Python 3.14 ese trabajo tiene soporte oficial, pero no es la configuración universal y algunas extensiones pueden reactivarlo. Sigue siendo necesario proteger estado compartido. [[Corrutinas y async def en Python|asyncio]] coordina esperas y no resuelve por sí mismo paralelismo de CPU.

El ejemplo muestra concurrencia lógica con dos resultados, sin inferir características del intérprete instalado.

## Ejemplo verificable

```python
import asyncio

async def dato(n):
    await asyncio.sleep(0)
    return n

async def main():
    print(await asyncio.gather(dato(1), dato(2)))

asyncio.run(main())
```

Salida esperada:

```text
[1, 2]
```

## Recuperación activa

> [!question]
> ¿Por qué no se puede deducir que un programa sea seguro entre hilos solo porque usa CPython?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/howto/free-threading-python.html).
