---
title: complex en Python
type: api-object
python_version: "3.14"
aliases: []
tags:
  - python
  - estudio
  - api
up:
  - "[[Tipos numéricos en Python|Tipos numéricos en Python]]"
prerequisites:
  - "[[float en Python|float en Python]]"
parts: []
related:
  - "[[Operadores aritméticos en Python|Operadores aritméticos en Python]]"
contrasts: []
---

# complex en Python

Forma parte de [[Tipos numéricos en Python|Tipos numéricos en Python]].

Antes de estudiar: [[float en Python|float en Python]].

complex representa un número mediante una parte real y otra imaginaria.

Un literal como `2 + 3j` combina dos componentes float. También puede usarse `complex(real, imag)`. Permite suma, producto, división y potencia; no tiene un orden natural compatible con `<` o `>`.

| Miembro | Entrada y propósito | Salida | Acceso o efecto |
|---|---|---|---|
| `real` | Parte real de `2 + 3j` | `2.0: float` | Solo lectura |
| `imag` | Parte imaginaria | `3.0: float` | Solo lectura |
| `conjugate()` | Sin argumentos; cambia signo imaginario | `(2-3j): complex` | No muta |

`abs(z)` devuelve la magnitud como float. `float(z)` no elimina silenciosamente la parte imaginaria: genera `TypeError`. Las limitaciones de precisión se heredan de [[float en Python|float]].

## Ejemplo verificable

```python
z = 3 + 4j
print(z.real, z.imag)
print(abs(z), z.conjugate())
```

Salida esperada:

```text
3.0 4.0
5.0 (3-4j)
```

## Recuperación activa

> [!question]
> ¿Qué diferencia hay entre z.real y abs(z)?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/library/stdtypes.html).
