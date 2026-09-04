---
title: "float en Python"
type: api-object
python_version: "3.14"
aliases: []
tags:
  - "python"
  - "estudio"
  - "api"
up:
  - "[[IA graphs/python/Tipos numéricos en Python|Tipos numéricos en Python]]"
prerequisites:
  - "[[IA graphs/python/int en Python|int en Python]]"
parts: []
related:
  - "[[IA graphs/python/Operadores de comparación en Python|Operadores de comparación en Python]]"
contrasts: []
---

# float en Python

Forma parte de [[IA graphs/python/Tipos numéricos en Python|Tipos numéricos en Python]].

Antes de estudiar: [[IA graphs/python/int en Python|int en Python]].

float representa números reales mediante una aproximación binaria de precisión finita.

Se crea con `1.5`, `2e3` o `float(texto_o_numero)`. Muchos decimales, como `0.1`, no tienen representación binaria exacta. Para comparar resultados aproximados puede usarse `math.isclose`; el umbral debe responder al problema.

| Miembro | Entrada y propósito | Retorno o ejemplo | Límite |
|---|---|---|---|
| `is_integer()` | Sin argumentos; valor finito integral | `(2.0).is_integer()` → `True: bool` | No convierte el tipo |
| `as_integer_ratio()` | Fracción exacta del float | `(0.5).as_integer_ratio()` → `(1, 2): tuple[int, int]` | NaN: `ValueError`; infinito: `OverflowError` |
| `hex()` | Representación hexadecimal | `(1.5).hex()` → `'0x1.8000000000000p+0': str` | No muta |
| `float.fromhex(texto)` | Interpreta representación hexadecimal | `float.fromhex('0x1.8p+0')` → `1.5: float` | Texto inválido: `ValueError` |
| `conjugate()` | Sin argumentos | `(1.5).conjugate()` → `1.5: float` | No muta |

`real` e `imag` son propiedades `float` de solo lectura: para `1.5` valen `1.5` y `0.0`. `inf` y `nan` son valores especiales; NaN ni siquiera es igual a sí mismo. [[IA graphs/python/Tipos numéricos en Python|Otros tipos numéricos]] resuelven necesidades distintas.

## Ejemplo verificable

```python
import math
print(0.1 + 0.2 == 0.3)
print(math.isclose(0.1 + 0.2, 0.3))
```

Salida esperada:

```text
False
True
```

## Recuperación activa

> [!question]
> ¿Por qué la igualdad exacta puede fallar con una suma de decimales?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/library/stdtypes.html).
