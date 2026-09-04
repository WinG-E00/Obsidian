---
title: "Sentencia with en Python"
type: atomic
python_version: "3.14"
aliases: []
tags:
  - "python"
  - "estudio"
up:
  - "[[IA graphs/python/Gestores de contexto en Python|Gestores de contexto en Python]]"
prerequisites:
  - "[[IA graphs/python/Clases en Python|Clases en Python]]"
  - "[[IA graphs/python/finally en Python|finally en Python]]"
parts: []
related:
  - "[[IA graphs/python/Archivos y open en Python|Archivos y open en Python]]"
  - "[[IA graphs/python/Gestores con contextlib.contextmanager en Python|Gestores con contextlib.contextmanager en Python]]"
  - "[[IA graphs/python/Gestores de contexto asíncronos en Python|Gestores de contexto asíncronos en Python]]"
contrasts: []
---

# Sentencia with en Python

Forma parte de [[IA graphs/python/Gestores de contexto en Python|Gestores de contexto en Python]].

Antes de estudiar: [[IA graphs/python/Clases en Python|Clases en Python]] · [[IA graphs/python/finally en Python|finally en Python]].

with usa un gestor de contexto para delimitar el uso de un recurso.

Invoca `__enter__()` y vincula su retorno si hay `as`. Cuando el bloque termina, llama a `__exit__(tipo, valor, traceback)`; si este devuelve un valor verdadero, puede suprimir una excepción del bloque. Si `__enter__` falla, no se llama al `__exit__` de ese mismo gestor.

El objeto vinculado por `as` no tiene por qué ser el gestor original. Para recursos que admiten el protocolo, como archivos, expresa adquisición y limpieza juntas. [[IA graphs/python/Gestores de contexto asíncronos en Python|async with]] es la variante cuyos métodos pueden esperar.

## Ejemplo verificable

```python
class Recurso:
    def __enter__(self):
        print('abrir')
        return 'dato'
    def __exit__(self, tipo, valor, traceback):
        print('cerrar')
        return False

with Recurso() as dato:
    print(dato)
```

Salida esperada:

```text
abrir
dato
cerrar
```

## Recuperación activa

> [!question]
> ¿Qué objeto recibe la variable escrita después de as?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/reference/compound_stmts.html).
