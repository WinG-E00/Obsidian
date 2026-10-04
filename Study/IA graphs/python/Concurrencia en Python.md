---
title: Concurrencia en Python
type: moc
python_version: "3.14"
aliases: []
tags:
  - python
  - estudio
up:
  - "[[Python - Mapa del lenguaje|Python - Mapa del lenguaje]]"
prerequisites:
  - "[[Definición de funciones en Python|Definición de funciones en Python]]"
  - "[[try y except en Python|try y except en Python]]"
  - "[[Sentencia with en Python|Sentencia with en Python]]"
parts:
  - "[[Corrutinas y async def en Python|Corrutinas y async def en Python]]"
  - "[[await en Python|await en Python]]"
  - "[[Tareas y TaskGroup en Python|Tareas y TaskGroup en Python]]"
  - "[[Cancelación asíncrona en Python|Cancelación asíncrona en Python]]"
  - "[[Iteración asíncrona en Python|Iteración asíncrona en Python]]"
  - "[[Gestores de contexto asíncronos en Python|Gestores de contexto asíncronos en Python]]"
  - "[[Hilos y estado compartido en Python|Hilos y estado compartido en Python]]"
  - "[[Procesos en Python|Procesos en Python]]"
  - "[[GIL y ejecución sin GIL en Python|GIL y ejecución sin GIL en Python]]"
related: []
contrasts: []
---

# Concurrencia en Python

Forma parte de [[Python - Mapa del lenguaje|Python - Mapa del lenguaje]].

Antes de estudiar: [[Definición de funciones en Python|Definición de funciones en Python]] · [[try y except en Python|try y except en Python]] · [[Sentencia with en Python|Sentencia with en Python]].

Cómo coordinar trabajo que espera o se ejecuta simultáneamente.

Concurrencia significa que varias actividades progresan durante un intervalo; paralelismo significa ejecución simultánea. [[Corrutinas y async def en Python|Las corrutinas]] y [[await en Python|await]] cooperan durante esperas; [[Tareas y TaskGroup en Python|las tareas]] organizan su avance.

[[Hilos y estado compartido en Python|Los hilos]] comparten memoria y [[Procesos en Python|los procesos]] tienen espacios separados. [[GIL y ejecución sin GIL en Python|El GIL]] depende de la implementación y compilación. Esta rama requiere dominar funciones, excepciones y gestión de recursos.

## Partes del concepto

- [[Corrutinas y async def en Python|Corrutinas y async def en Python]] — async def define una función de corrutina cuya ejecución puede suspenderse.
- [[await en Python|await en Python]] — await obtiene el resultado de un objeto esperable y puede suspender la corrutina actual mientras está pendiente.
- [[Tareas y TaskGroup en Python|Tareas y TaskGroup en Python]] — Una tarea programa el avance de una corrutina dentro de un bucle de eventos.
- [[Cancelación asíncrona en Python|Cancelación asíncrona en Python]] — Cancelar una tarea solicita que interrumpa su trabajo mediante CancelledError.
- [[Iteración asíncrona en Python|Iteración asíncrona en Python]] — async for recorre una fuente cuyo siguiente elemento puede requerir espera.
- [[Gestores de contexto asíncronos en Python|Gestores de contexto asíncronos en Python]] — async with permite esperar durante la entrada y la salida de un contexto.
- [[Hilos y estado compartido en Python|Hilos y estado compartido en Python]] — Los hilos permiten varias secuencias de ejecución dentro del mismo proceso.
- [[Procesos en Python|Procesos en Python]] — Los procesos permiten ejecutar trabajo en espacios de memoria separados.
- [[GIL y ejecución sin GIL en Python|GIL y ejecución sin GIL en Python]] — El GIL es una propiedad de determinadas compilaciones de CPython, no una regla universal del lenguaje.

## Recuperación activa

> [!question]
> ¿Cómo se relacionan las partes de concurrencia en python y qué función cumple cada una?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/library/asyncio.html).
