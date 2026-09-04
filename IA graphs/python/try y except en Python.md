---
title: "try y except en Python"
type: concept
python_version: "3.14"
aliases: []
tags:
  - "python"
  - "estudio"
up:
  - "[[IA graphs/python/Excepciones en Python|Excepciones en Python]]"
prerequisites:
  - "[[IA graphs/python/Objeto excepción y propagación en Python|Objeto excepción y propagación en Python]]"
parts:
  - "[[IA graphs/python/else en try en Python|else en try en Python]]"
  - "[[IA graphs/python/finally en Python|finally en Python]]"
related:
  - "[[IA graphs/python/else en try en Python|else en try en Python]]"
  - "[[IA graphs/python/finally en Python|finally en Python]]"
contrasts: []
---

# try y except en Python

Forma parte de [[IA graphs/python/Excepciones en Python|Excepciones en Python]].

Antes de estudiar: [[IA graphs/python/Objeto excepción y propagación en Python|Objeto excepción y propagación en Python]].

try delimita instrucciones cuyos fallos pueden manejarse mediante except.

Python busca el primer `except` compatible con la clase de la excepción. Los manejadores más específicos deben ir antes que los generales. Se pueden agrupar clases en una tupla cuando reciben el mismo tratamiento.

El bloque protegido debería ser lo bastante pequeño para identificar qué operación se esperaba que fallara. Atrapar `Exception` y continuar silenciosamente puede esconder errores del programa; capturar una excepción concreta permite decidir cómo recuperarse. Los bloques [[IA graphs/python/else en try en Python|else]] y [[IA graphs/python/finally en Python|finally]] cumplen funciones distintas.

## Partes del concepto

- [[IA graphs/python/else en try en Python|else en try en Python]] — El else de try ejecuta trabajo posterior cuando el bloque protegido termina sin excepción ni salida anticipada.
- [[IA graphs/python/finally en Python|finally en Python]] — finally ejecuta limpieza cuando la ejecución abandona el try en el flujo normal de Python.

## Ejemplo verificable

```python
try:
    numero = int('abc')
except ValueError:
    numero = 0
print(numero)
```

Salida esperada:

```text
0
```

## Recuperación activa

> [!question]
> ¿Por qué el orden de los bloques except puede cambiar qué manejador se ejecuta?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/reference/compound_stmts.html).
