---
title: "Procesos en Python"
type: atomic
python_version: "3.14"
aliases: []
tags:
  - "python"
  - "estudio"
up:
  - "[[IA graphs/python/Concurrencia en Python|Concurrencia en Python]]"
prerequisites:
  - "[[IA graphs/python/Módulo en Python|Módulo en Python]]"
  - "[[IA graphs/python/Punto de entrada y __main__ en Python|Punto de entrada y __main__ en Python]]"
parts: []
related:
  - "[[IA graphs/python/Hilos y estado compartido en Python|Hilos y estado compartido en Python]]"
  - "[[IA graphs/python/GIL y ejecución sin GIL en Python|GIL y ejecución sin GIL en Python]]"
contrasts:
  - "[[IA graphs/python/Hilos y estado compartido en Python|Hilos y estado compartido en Python]]"
---

# Procesos en Python

Forma parte de [[IA graphs/python/Concurrencia en Python|Concurrencia en Python]].

Antes de estudiar: [[IA graphs/python/Módulo en Python|Módulo en Python]] · [[IA graphs/python/Punto de entrada y __main__ en Python|Punto de entrada y __main__ en Python]].

Los procesos permiten ejecutar trabajo en espacios de memoria separados.

Pueden aprovechar varios núcleos para trabajo de CPU sin depender del GIL de un único intérprete, pero necesitan comunicar o serializar datos y tienen costos de arranque. `multiprocessing` y `concurrent.futures.ProcessPoolExecutor` ofrecen herramientas estándar.

El método de inicio depende de plataforma y versión; desde Python 3.14 no se debe asumir `fork` como predeterminado. Funciones y datos enviados a procesos deben cumplir las condiciones de serialización del mecanismo. Proteger la entrada con [[IA graphs/python/Punto de entrada y __main__ en Python|__main__]] evita iniciar procesos repetidamente cuando se carga el módulo.

El ejemplo inspecciona un contexto, sin iniciar procesos ni imponerlo globalmente.

## Ejemplo verificable

```python
import multiprocessing

contexto = multiprocessing.get_context('spawn')
print(contexto.get_start_method())
```

Salida esperada:

```text
spawn
```

## Para comparar

- [[IA graphs/python/Hilos y estado compartido en Python|Hilos y estado compartido en Python]]

## Recuperación activa

> [!question]
> ¿Qué costo añade separar memoria que no aparece del mismo modo al usar hilos?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/library/multiprocessing.html).
