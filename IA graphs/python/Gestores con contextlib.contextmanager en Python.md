---
title: "Gestores con contextlib.contextmanager en Python"
type: atomic
python_version: "3.14"
aliases: []
tags:
  - "python"
  - "estudio"
up:
  - "[[IA graphs/python/Gestores de contexto en Python|Gestores de contexto en Python]]"
prerequisites:
  - "[[IA graphs/python/Sentencia with en Python|Sentencia with en Python]]"
  - "[[IA graphs/python/yield en Python|yield en Python]]"
  - "[[IA graphs/python/Decoradores en Python|Decoradores en Python]]"
  - "[[IA graphs/python/finally en Python|finally en Python]]"
parts: []
related:
  - "[[IA graphs/python/Gestores de contexto asíncronos en Python|Gestores de contexto asíncronos en Python]]"
contrasts: []
---

# Gestores con contextlib.contextmanager en Python

Forma parte de [[IA graphs/python/Gestores de contexto en Python|Gestores de contexto en Python]].

Antes de estudiar: [[IA graphs/python/Sentencia with en Python|Sentencia with en Python]] · [[IA graphs/python/yield en Python|yield en Python]] · [[IA graphs/python/Decoradores en Python|Decoradores en Python]] · [[IA graphs/python/finally en Python|finally en Python]].

contextmanager convierte un generador con una entrega en un gestor de contexto.

El código anterior a `yield` prepara el recurso; el valor entregado se usa en `as`; al salir se reanuda la función para la limpieza. El generador debe entregar exactamente una vez en el uso normal.

Un `try/finally` alrededor de `yield` asegura la limpieza en las salidas normales del lenguaje. Si una excepción del bloque se captura dentro del generador y no se vuelve a lanzar, se considera manejada. El módulo ofrece además `ExitStack` para recursos dinámicos y `asynccontextmanager` para la variante asíncrona.

## Ejemplo verificable

```python
from contextlib import contextmanager

@contextmanager
def recurso():
    print('preparar')
    try:
        yield 7
    finally:
        print('liberar')

with recurso() as valor:
    print(valor)
```

Salida esperada:

```text
preparar
7
liberar
```

## Recuperación activa

> [!question]
> ¿Por qué la limpieza se coloca en finally alrededor de yield?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/library/contextlib.html).
