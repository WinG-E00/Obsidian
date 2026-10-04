---
title: Archivos y open en Python
type: atomic
python_version: "3.14"
aliases: []
tags:
  - python
  - estudio
up:
  - "[[Herramientas y práctica de Python|Herramientas y práctica de Python]]"
prerequisites:
  - "[[Sentencia with en Python|Sentencia with en Python]]"
  - "[[Unicode y codificación en Python|Unicode y codificación en Python]]"
parts: []
related:
  - "[[Rutas con pathlib.Path en Python|Rutas con pathlib.Path en Python]]"
  - "[[Serialización con json en Python|Serialización con json en Python]]"
contrasts: []
---

# Archivos y open en Python

Forma parte de [[Herramientas y práctica de Python|Herramientas y práctica de Python]].

Antes de estudiar: [[Sentencia with en Python|Sentencia with en Python]] · [[Unicode y codificación en Python|Unicode y codificación en Python]].

open crea un flujo para leer o escribir datos y with delimita su uso.

Firma de uso: `open(ruta, mode='r', encoding=None, ...) -> flujo`. `r` lee, `w` crea o trunca, `a` agrega, `x` exige creación nueva; `b` selecciona bytes y `+` habilita lectura y escritura. En texto conviene indicar la codificación.

Interfaz del flujo: `read(size=-1)` devuelve str o bytes; `readline(size=-1)` lee una línea; `write(datos)` devuelve la cantidad escrita; `seek(offset, whence=0)` cambia posición; `tell()` informa posición; `flush()` vacía búferes y `close()` cierra. `closed: bool` es de lectura. En texto, `encoding: str` indica la codificación y las posiciones pueden ser marcas opacas, no índices de caracteres.

La ruta inexistente puede producir `FileNotFoundError`; permisos insuficientes, `PermissionError`; formato incompatible, errores de codificación. El ejemplo escribe únicamente en un directorio temporal propio.

## Ejemplo verificable

```python
from pathlib import Path
from tempfile import TemporaryDirectory

with TemporaryDirectory() as carpeta:
    ruta = Path(carpeta) / 'nota.txt'
    with open(ruta, 'w', encoding='utf-8') as archivo:
        escritos = archivo.write('hola\n')
    with open(ruta, encoding='utf-8') as archivo:
        print(archivo.read().strip())
    print(escritos, archivo.closed)
```

Salida esperada:

```text
hola
5 True
```

## Recuperación activa

> [!question]
> ¿Qué riesgo concreto tiene abrir una ruta existente con modo w?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/tutorial/inputoutput.html).
