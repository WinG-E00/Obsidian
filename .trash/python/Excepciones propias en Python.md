---
title: Excepciones propias en Python
type: atomic
python_version: "3.14"
aliases: []
tags:
  - python
  - estudio
up:
  - "[[Excepciones en Python|Excepciones en Python]]"
prerequisites:
  - "[[Clases en Python|Clases en Python]]"
  - "[[Objeto excepción y propagación en Python|Objeto excepción y propagación en Python]]"
parts: []
related:
  - "[[raise y encadenamiento en Python|raise y encadenamiento en Python]]"
contrasts: []
---

# Excepciones propias en Python

Forma parte de [[Excepciones en Python|Excepciones en Python]].

Antes de estudiar: [[Clases en Python|Clases en Python]] · [[Objeto excepción y propagación en Python|Objeto excepción y propagación en Python]].

Una clase de excepción propia distingue fallos del dominio de otros errores.

Normalmente se hereda de `Exception` y se elige un nombre terminado en `Error`. Una clase vacía ya permite que el consumidor capture ese caso por tipo. Se pueden añadir atributos cuando aportan información estructurada para recuperarse.

No conviene usar una clase propia para encubrir todos los fallos bajo el mismo mensaje: [[raise y encadenamiento en Python|el encadenamiento]] conserva el origen. La jerarquía puede organizar grupos de errores de la aplicación.

## Ejemplo verificable

```python
class StockInsuficienteError(Exception):
    pass

try:
    raise StockInsuficienteError('faltan unidades')
except StockInsuficienteError as error:
    print(str(error))
```

Salida esperada:

```text
faltan unidades
```

## Recuperación activa

> [!question]
> ¿Qué ventaja ofrece un tipo propio frente a distinguir errores solo por su mensaje?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/tutorial/errors.html).
