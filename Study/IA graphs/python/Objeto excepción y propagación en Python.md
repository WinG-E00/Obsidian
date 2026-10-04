---
title: Objeto excepción y propagación en Python
type: atomic
python_version: "3.14"
aliases: []
tags:
  - python
  - estudio
up:
  - "[[Excepciones en Python|Excepciones en Python]]"
prerequisites:
  - "[[Definición de funciones en Python|Definición de funciones en Python]]"
parts: []
related:
  - "[[try y except en Python|try y except en Python]]"
  - "[[raise y encadenamiento en Python|raise y encadenamiento en Python]]"
contrasts: []
---

# Objeto excepción y propagación en Python

Forma parte de [[Excepciones en Python|Excepciones en Python]].

Antes de estudiar: [[Definición de funciones en Python|Definición de funciones en Python]].

Una excepción es un objeto que interrumpe el flujo normal hasta encontrar un manejador compatible.

Las excepciones de aplicación suelen derivar de `Exception`; `KeyboardInterrupt`, `SystemExit` y `GeneratorExit` derivan de otras ramas de `BaseException`. `SyntaxError` señala código no válido; `TypeError`, una operación o argumento de tipo incompatible; `ValueError`, un valor inaceptable dentro del tipo esperado.

La propagación sube por llamadas activas. Un traceback muestra esa ruta; conviene leer el tipo y mensaje final y luego localizar el origen. Propiedades útiles: `args: tuple`, `__traceback__`, `__cause__` y `__context__`. `add_note(texto) -> None` agrega contexto visible y `with_traceback(tb)` devuelve la misma excepción con ese traceback.

## Ejemplo verificable

```python
try:
    int('texto')
except ValueError as error:
    print(type(error).__name__)
    print(isinstance(error, Exception))
```

Salida esperada:

```text
ValueError
True
```

## Recuperación activa

> [!question]
> ¿Qué recorrido sigue una excepción cuando la función actual no la maneja?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/library/exceptions.html).
