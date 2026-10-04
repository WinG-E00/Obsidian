---
title: Ejecución de un programa en Python
type: atomic
python_version: "3.14"
aliases: []
tags:
  - python
  - estudio
up:
  - "[[Fundamentos de Python|Fundamentos de Python]]"
prerequisites: []
parts: []
related:
  - "[[Punto de entrada y __main__ en Python|Punto de entrada y __main__ en Python]]"
  - "[[Compilación y bytecode en Python|Compilación y bytecode en Python]]"
contrasts: []
---

# Ejecución de un programa en Python

Forma parte de [[Fundamentos de Python|Fundamentos de Python]].

Un intérprete ejecuta instrucciones escritas según las reglas de Python.

Python es el lenguaje; CPython es una implementación. En CPython, el código se analiza y compila a bytecode antes de ejecutarse. Un archivo `.py` no se convierte por eso en un ejecutable nativo independiente.

En una terminal, `python3 archivo.py` ejecuta un archivo y `python3 -m paquete.modulo` localiza un módulo y lo ejecuta. El comando disponible puede llamarse `python` o `py` según la instalación. [[Punto de entrada y __main__ en Python|El punto de entrada]] permite separar ejecución e importación.

## Ejemplo verificable

```python
print(3 * 4)
```

Salida esperada:

```text
12
```

## Recuperación activa

> [!question]
> ¿Qué diferencia hay entre Python, CPython y un archivo .py?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/reference/executionmodel.html).
