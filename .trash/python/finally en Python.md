---
title: finally en Python
type: atomic
python_version: "3.14"
aliases: []
tags:
  - python
  - estudio
up:
  - "[[try y except en Python|try y except en Python]]"
prerequisites:
  - "[[try y except en Python|try y except en Python]]"
  - "[[Retorno de funciones en Python|Retorno de funciones en Python]]"
parts: []
related:
  - "[[Sentencia with en Python|Sentencia with en Python]]"
contrasts: []
---

# finally en Python

Forma parte de [[try y except en Python|try y except en Python]].

Antes de estudiar: [[try y except en Python|try y except en Python]] · [[Retorno de funciones en Python|Retorno de funciones en Python]].

finally ejecuta limpieza cuando la ejecución abandona el try en el flujo normal de Python.

Se ejecuta tanto si hubo éxito como si se propaga una excepción o aparece un `return`. No es una garantía frente a la terminación abrupta del proceso o del sistema.

Si `finally` retorna o lanza otra excepción, puede reemplazar el resultado o fallo pendiente. Por eso conviene reservarlo para limpieza y evitar salidas que oculten el motivo original. [[Sentencia with en Python|Los gestores de contexto]] encapsulan muchos de estos patrones.

## Ejemplo verificable

```python
def calcular():
    try:
        return 7
    finally:
        print('limpieza')

print(calcular())
```

Salida esperada:

```text
limpieza
7
```

## Recuperación activa

> [!question]
> ¿Por qué finalmente se imprime limpieza antes del resultado retornado?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/reference/compound_stmts.html).
