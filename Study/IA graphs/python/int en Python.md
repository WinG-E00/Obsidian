---
title: int en Python
type: api-object
python_version: "3.14"
aliases:
  - Integer de Python
tags:
  - python
  - estudio
  - api
up:
  - "[[Tipos numéricos en Python|Tipos numéricos en Python]]"
prerequisites: []
parts: []
related:
  - "[[Operadores aritméticos en Python|Operadores aritméticos en Python]]"
  - "[[float en Python|float en Python]]"
contrasts: []
---

# int en Python

Forma parte de [[Tipos numéricos en Python|Tipos numéricos en Python]].

int representa números enteros de precisión arbitraria, limitada por la memoria disponible.

Se crea con `12`, `-3`, `0xFF` o `int(valor)`. La conversión desde float trunca hacia cero; no redondea. `int(texto, base)` interpreta texto y puede producir `ValueError`.

Interfaz principal, sin mutación:

| Miembro | Entrada y propósito | Retorno o ejemplo | Límite |
|---|---|---|---|
| `bit_length()` | Sin argumentos; bits de la magnitud | `(9).bit_length()` → `4: int` | Cero necesita 0 bits |
| `bit_count()` | Sin argumentos; cuenta bits activos | `(9).bit_count()` → `2: int` | Usa el valor absoluto |
| `to_bytes(length=1, byteorder='big', *, signed=False)` | Tamaño entero y orden | `(9).to_bytes()` → `b'\t': bytes` | `OverflowError` si no cabe |
| `int.from_bytes(data, byteorder='big', *, signed=False)` | Bytes o iterable de enteros | `int.from_bytes(b'\t')` → `9: int` | Elementos fuera de 0–255 fallan |
| `as_integer_ratio()` | Sin argumentos; fracción exacta | `(9).as_integer_ratio()` → `(9, 1): tuple` | Denominador siempre 1 |
| `is_integer()` | Sin argumentos | `(9).is_integer()` → `True: bool` | Disponible desde 3.12 |

Propiedades de solo lectura: `real` devuelve el mismo valor, `imag` devuelve `0`, `numerator` el entero y `denominator` `1`; todas son `int`. `conjugate()` devuelve el mismo valor entero.

## Ejemplo verificable

```python
print(10 ** 30)
print(int(-3.9))
```

Salida esperada:

```text
1000000000000000000000000000000
-3
```

## Recuperación activa

> [!question]
> ¿En qué se diferencia int(-3.9) de redondear al entero más cercano?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/library/stdtypes.html).
