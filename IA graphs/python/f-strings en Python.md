---
title: "f-strings en Python"
type: atomic
python_version: "3.14"
aliases: []
tags:
  - "python"
  - "estudio"
up:
  - "[[IA graphs/python/str en Python|str en Python]]"
prerequisites:
  - "[[IA graphs/python/str en Python|str en Python]]"
parts: []
related:
  - "[[IA graphs/python/t-strings en Python|t-strings en Python]]"
  - "[[IA graphs/python/Representación con repr y str en Python|Representación con repr y str en Python]]"
contrasts:
  - "[[IA graphs/python/t-strings en Python|t-strings en Python]]"
---

# f-strings en Python

Forma parte de [[IA graphs/python/str en Python|str en Python]].

Antes de estudiar: [[IA graphs/python/str en Python|str en Python]].

Una f-string evalúa expresiones y construye texto en ese momento.

Se escribe `f'Hola {nombre}'`. Entre llaves puede haber expresiones; después de `:` puede indicarse un formato como `.2f`. `!r` usa la representación orientada a depuración y `{{` o `}}` escriben llaves literales.

El resultado es un nuevo `str`: si una variable cambia después, el texto ya creado no se recalcula. Una [[IA graphs/python/t-strings en Python|t-string]] conserva la estructura de la interpolación para que otro código la procese.

## Ejemplo verificable

```python
precio = 7.5
texto = f'Total: {precio:.2f}'
precio = 9
print(texto)
print(f'{{dato}} {precio=}')
```

Salida esperada:

```text
Total: 7.50
{dato} precio=9
```

## Para comparar

- [[IA graphs/python/t-strings en Python|t-strings en Python]]

## Recuperación activa

> [!question]
> ¿Cuándo se evalúan las expresiones de una f-string?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/reference/lexical_analysis.html).
