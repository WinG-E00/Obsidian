---
title: ExceptionGroup y except estrella en Python
type: atomic
python_version: "3.14"
aliases: []
tags:
  - python
  - estudio
up:
  - "[[Excepciones en Python|Excepciones en Python]]"
prerequisites:
  - "[[try y except en Python|try y except en Python]]"
  - "[[Objeto excepción y propagación en Python|Objeto excepción y propagación en Python]]"
parts: []
related:
  - "[[Tareas y TaskGroup en Python|Tareas y TaskGroup en Python]]"
contrasts: []
---

# ExceptionGroup y except estrella en Python

Forma parte de [[Excepciones en Python|Excepciones en Python]].

Antes de estudiar: [[try y except en Python|try y except en Python]] · [[Objeto excepción y propagación en Python|Objeto excepción y propagación en Python]].

ExceptionGroup reúne varios fallos independientes en una sola excepción estructurada.

Disponible desde 3.11. `ExceptionGroup(mensaje, excepciones)` agrupa subexcepciones derivadas de `Exception`; `BaseExceptionGroup` admite también otras ramas. `except* Tipo` selecciona los subgrupos compatibles y puede ejecutar más de un manejador para un mismo grupo.

Las partes no manejadas se propagan. No se mezcla `except` y `except*` en el mismo try. Este mecanismo es especialmente útil con [[Tareas y TaskGroup en Python|TaskGroup]], donde varias tareas pueden fallar. Sus atributos `message: str` y `exceptions: tuple` describen el grupo y son de solo lectura.

## Ejemplo verificable

```python
try:
    raise ExceptionGroup('fallos', [ValueError('a'), TypeError('b')])
except* ValueError as grupo:
    print('valor', len(grupo.exceptions))
except* TypeError as grupo:
    print('tipo', len(grupo.exceptions))
```

Salida esperada:

```text
valor 1
tipo 1
```

## Recuperación activa

> [!question]
> ¿En qué se diferencia except* de capturar la clase ExceptionGroup entera?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/reference/compound_stmts.html).
