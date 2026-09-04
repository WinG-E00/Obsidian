---
title: "Acotación de tipos y Any en Python"
type: atomic
python_version: "3.14"
aliases: []
tags:
  - "python"
  - "estudio"
up:
  - "[[IA graphs/python/Anotaciones de tipos en Python|Anotaciones de tipos en Python]]"
prerequisites:
  - "[[IA graphs/python/Uniones y valores opcionales en Python|Uniones y valores opcionales en Python]]"
  - "[[IA graphs/python/Anotaciones de funciones y variables en Python|Anotaciones de funciones y variables en Python]]"
parts: []
related:
  - "[[IA graphs/python/Genéricos en Python|Genéricos en Python]]"
contrasts: []
---

# Acotación de tipos y Any en Python

Forma parte de [[IA graphs/python/Anotaciones de tipos en Python|Anotaciones de tipos en Python]].

Antes de estudiar: [[IA graphs/python/Uniones y valores opcionales en Python|Uniones y valores opcionales en Python]] · [[IA graphs/python/Anotaciones de funciones y variables en Python|Anotaciones de funciones y variables en Python]].

Acotar un tipo reduce las posibilidades que considera un analizador después de una comprobación.

`isinstance`, `is None` y ciertas comparaciones permiten descartar variantes. `Literal['ok', 'error']` describe valores concretos; `TypeGuard` y `TypeIs` ayudan a expresar funciones que realizan comprobaciones.

`Any` permite operaciones sin las comprobaciones estáticas habituales y puede ocultar errores. `object` también admite cualquier objeto como entrada, pero exige acotar o usar operaciones comunes antes de tratarlo como un tipo más específico. `typing.cast(T, valor)` comunica una suposición al analizador: no convierte ni valida el valor en ejecución.

## Ejemplo verificable

```python
def describir(valor: int | str) -> str:
    if isinstance(valor, str):
        return valor.upper()
    return str(valor + 1)

print(describir('hola'), describir(4))
```

Salida esperada:

```text
HOLA 5
```

## Recuperación activa

> [!question]
> ¿Por qué cast(int, '3') no es una conversión equivalente a int('3')?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/library/typing.html).
