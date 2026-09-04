---
title: "Closures en Python"
type: atomic
python_version: "3.14"
aliases:
  - "Cierre léxico de Python"
tags:
  - "python"
  - "estudio"
up:
  - "[[IA graphs/python/Ámbitos de nombres en Python|Ámbitos de nombres en Python]]"
prerequisites:
  - "[[IA graphs/python/Definición de funciones en Python|Definición de funciones en Python]]"
  - "[[IA graphs/python/Resolución de nombres LEGB en Python|Resolución de nombres LEGB en Python]]"
parts: []
related:
  - "[[IA graphs/python/nonlocal en Python|nonlocal en Python]]"
  - "[[IA graphs/python/Valores por defecto en Python|Valores por defecto en Python]]"
  - "[[IA graphs/python/Decoradores en Python|Decoradores en Python]]"
contrasts: []
---

# Closures en Python

Forma parte de [[IA graphs/python/Ámbitos de nombres en Python|Ámbitos de nombres en Python]].

Antes de estudiar: [[IA graphs/python/Definición de funciones en Python|Definición de funciones en Python]] · [[IA graphs/python/Resolución de nombres LEGB en Python|Resolución de nombres LEGB en Python]].

Una closure conserva acceso a vinculaciones de una función externa después de que esa llamada termina.

La función interna no guarda necesariamente una fotografía de los valores: mantiene acceso a las vinculaciones. Esto explica por qué funciones creadas en un bucle pueden observar el último valor de la misma variable.

Para fijar un valor al crear cada función puede usarse un parámetro por defecto o una función fábrica. [[IA graphs/python/Valores por defecto en Python|Los valores por defecto]] y [[IA graphs/python/nonlocal en Python|nonlocal]] permiten distinguir capturar un valor de actualizar estado compartido.

## Ejemplo verificable

```python
def multiplicador(factor):
    def aplicar(numero):
        return numero * factor
    return aplicar

triple = multiplicador(3)
print(triple(4))
```

Salida esperada:

```text
12
```

## Recuperación activa

> [!question]
> ¿Qué conserva aplicar cuando multiplicador ya terminó?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/reference/executionmodel.html).
