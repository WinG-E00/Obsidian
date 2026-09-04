---
title: "Biblioteca estándar en Python"
type: atomic
python_version: "3.14"
aliases: []
tags:
  - "python"
  - "estudio"
up:
  - "[[IA graphs/python/Herramientas y práctica de Python|Herramientas y práctica de Python]]"
prerequisites:
  - "[[IA graphs/python/import en Python|import en Python]]"
  - "[[IA graphs/python/Tipos de datos en Python|Tipos de datos en Python]]"
parts: []
related:
  - "[[IA graphs/python/Funciones incorporadas en Python|Funciones incorporadas en Python]]"
contrasts: []
---

# Biblioteca estándar en Python

Forma parte de [[IA graphs/python/Herramientas y práctica de Python|Herramientas y práctica de Python]].

Antes de estudiar: [[IA graphs/python/import en Python|import en Python]] · [[IA graphs/python/Tipos de datos en Python|Tipos de datos en Python]].

La biblioteca estándar aporta módulos distribuidos con Python para tareas habituales.

Se distingue del lenguaje, de los nombres incorporados disponibles sin import y de paquetes instalados aparte. Su disponibilidad concreta puede depender de plataforma o compilación.

| Necesidad | Módulos para continuar | Relación con el lenguaje |
|---|---|---|
| Matemática precisa | `math`, `decimal`, `fractions`, `statistics` | Amplían los tipos numéricos |
| Recorridos y colecciones | `itertools`, `collections`, `functools` | Aprovechan iterables y funciones |
| Texto y formatos | `re`, `csv`, `json`, `tomllib` | Interpretan y generan representaciones |
| Archivos y sistema | `pathlib`, `os`, `sys`, `shutil` | Conectan objetos con recursos externos |
| Fechas y tiempos | `datetime`, `zoneinfo`, `time` | Separan instantes, zonas y duraciones |
| Herramientas de programas | `argparse`, `logging`, `unittest`, `pdb` | Ofrecen entrada, registro y pruebas |
| Concurrencia | `asyncio`, `threading`, `multiprocessing` | Coordinan tareas, hilos y procesos |

Este es un mapa de orientación, no un inventario de todos los módulos o sus APIs. [[IA graphs/python/Serialización con json en Python|JSON]], [[IA graphs/python/Rutas con pathlib.Path en Python|rutas]], [[IA graphs/python/Pruebas con unittest en Python|pruebas]] y [[IA graphs/python/Concurrencia en Python|concurrencia]] se desarrollan en sus notas.

## Ejemplo verificable

```python
from collections import Counter

conteo = Counter(['a', 'b', 'a'])
print(conteo['a'], conteo['z'])
```

Salida esperada:

```text
2 0
```

## Recuperación activa

> [!question]
> ¿Qué diferencia hay entre un nombre incorporado y un módulo estándar?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/library/index.html).
