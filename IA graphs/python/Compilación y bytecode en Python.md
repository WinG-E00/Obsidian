---
title: "Compilación y bytecode en Python"
type: atomic
python_version: "3.14"
aliases: []
tags:
  - "python"
  - "estudio"
up:
  - "[[IA graphs/python/Fundamentos de Python|Fundamentos de Python]]"
prerequisites:
  - "[[IA graphs/python/Ejecución de un programa en Python|Ejecución de un programa en Python]]"
  - "[[IA graphs/python/Definición de funciones en Python|Definición de funciones en Python]]"
parts: []
related:
  - "[[IA graphs/python/compile, eval y exec en Python|compile, eval y exec en Python]]"
  - "[[IA graphs/python/Sistema de importación en Python|Sistema de importación en Python]]"
contrasts: []
---

# Compilación y bytecode en Python

Forma parte de [[IA graphs/python/Fundamentos de Python|Fundamentos de Python]].

Antes de estudiar: [[IA graphs/python/Ejecución de un programa en Python|Ejecución de un programa en Python]] · [[IA graphs/python/Definición de funciones en Python|Definición de funciones en Python]].

CPython transforma código fuente en objetos de código que su intérprete ejecuta.

El análisis léxico reconoce elementos, el análisis sintáctico construye una estructura y la compilación produce instrucciones para la máquina virtual. `dis` permite inspeccionarlas, pero su forma puede cambiar entre versiones.

Los archivos `.pyc` en `__pycache__` pueden almacenar código compilado para acelerar ciertas importaciones. No son código máquina portable ni eliminan la necesidad del intérprete. El código de una función se observa mediante `__code__`; su estado y sus argumentos pertenecen a llamadas concretas.

## Ejemplo verificable

```python
def suma(a, b):
    return a + b

print(suma.__code__.co_name)
print(suma.__code__.co_argcount)
```

Salida esperada:

```text
suma
2
```

## Recuperación activa

> [!question]
> ¿Por qué disponer de un .pyc no vuelve al programa independiente de Python?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/library/dis.html).
