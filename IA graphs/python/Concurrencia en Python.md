---
title: "Concurrencia en Python"
type: moc
python_version: "3.14"
aliases: []
tags:
  - "python"
  - "estudio"
up:
  - "[[IA graphs/python/Python - Mapa del lenguaje|Python - Mapa del lenguaje]]"
prerequisites:
  - "[[IA graphs/python/Definición de funciones en Python|Definición de funciones en Python]]"
  - "[[IA graphs/python/try y except en Python|try y except en Python]]"
  - "[[IA graphs/python/Sentencia with en Python|Sentencia with en Python]]"
parts:
  - "[[IA graphs/python/Corrutinas y async def en Python|Corrutinas y async def en Python]]"
  - "[[IA graphs/python/await en Python|await en Python]]"
  - "[[IA graphs/python/Tareas y TaskGroup en Python|Tareas y TaskGroup en Python]]"
  - "[[IA graphs/python/Cancelación asíncrona en Python|Cancelación asíncrona en Python]]"
  - "[[IA graphs/python/Iteración asíncrona en Python|Iteración asíncrona en Python]]"
  - "[[IA graphs/python/Gestores de contexto asíncronos en Python|Gestores de contexto asíncronos en Python]]"
  - "[[IA graphs/python/Hilos y estado compartido en Python|Hilos y estado compartido en Python]]"
  - "[[IA graphs/python/Procesos en Python|Procesos en Python]]"
  - "[[IA graphs/python/GIL y ejecución sin GIL en Python|GIL y ejecución sin GIL en Python]]"
related: []
contrasts: []
---

# Concurrencia en Python

Forma parte de [[IA graphs/python/Python - Mapa del lenguaje|Python - Mapa del lenguaje]].

Antes de estudiar: [[IA graphs/python/Definición de funciones en Python|Definición de funciones en Python]] · [[IA graphs/python/try y except en Python|try y except en Python]] · [[IA graphs/python/Sentencia with en Python|Sentencia with en Python]].

Cómo coordinar trabajo que espera o se ejecuta simultáneamente.

Concurrencia significa que varias actividades progresan durante un intervalo; paralelismo significa ejecución simultánea. [[IA graphs/python/Corrutinas y async def en Python|Las corrutinas]] y [[IA graphs/python/await en Python|await]] cooperan durante esperas; [[IA graphs/python/Tareas y TaskGroup en Python|las tareas]] organizan su avance.

[[IA graphs/python/Hilos y estado compartido en Python|Los hilos]] comparten memoria y [[IA graphs/python/Procesos en Python|los procesos]] tienen espacios separados. [[IA graphs/python/GIL y ejecución sin GIL en Python|El GIL]] depende de la implementación y compilación. Esta rama requiere dominar funciones, excepciones y gestión de recursos.

## Partes del concepto

- [[IA graphs/python/Corrutinas y async def en Python|Corrutinas y async def en Python]] — async def define una función de corrutina cuya ejecución puede suspenderse.
- [[IA graphs/python/await en Python|await en Python]] — await obtiene el resultado de un objeto esperable y puede suspender la corrutina actual mientras está pendiente.
- [[IA graphs/python/Tareas y TaskGroup en Python|Tareas y TaskGroup en Python]] — Una tarea programa el avance de una corrutina dentro de un bucle de eventos.
- [[IA graphs/python/Cancelación asíncrona en Python|Cancelación asíncrona en Python]] — Cancelar una tarea solicita que interrumpa su trabajo mediante CancelledError.
- [[IA graphs/python/Iteración asíncrona en Python|Iteración asíncrona en Python]] — async for recorre una fuente cuyo siguiente elemento puede requerir espera.
- [[IA graphs/python/Gestores de contexto asíncronos en Python|Gestores de contexto asíncronos en Python]] — async with permite esperar durante la entrada y la salida de un contexto.
- [[IA graphs/python/Hilos y estado compartido en Python|Hilos y estado compartido en Python]] — Los hilos permiten varias secuencias de ejecución dentro del mismo proceso.
- [[IA graphs/python/Procesos en Python|Procesos en Python]] — Los procesos permiten ejecutar trabajo en espacios de memoria separados.
- [[IA graphs/python/GIL y ejecución sin GIL en Python|GIL y ejecución sin GIL en Python]] — El GIL es una propiedad de determinadas compilaciones de CPython, no una regla universal del lenguaje.

## Recuperación activa

> [!question]
> ¿Cómo se relacionan las partes de concurrencia en python y qué función cumple cada una?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/library/asyncio.html).
