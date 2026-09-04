---
title: "Uniones y valores opcionales en Python"
type: atomic
python_version: "3.14"
aliases: []
tags:
  - "python"
  - "estudio"
up:
  - "[[IA graphs/python/Anotaciones de tipos en Python|Anotaciones de tipos en Python]]"
prerequisites:
  - "[[IA graphs/python/Anotaciones de funciones y variables en Python|Anotaciones de funciones y variables en Python]]"
  - "[[IA graphs/python/None en Python|None en Python]]"
  - "[[IA graphs/python/Valores por defecto en Python|Valores por defecto en Python]]"
parts: []
related:
  - "[[IA graphs/python/Acotación de tipos y Any en Python|Acotación de tipos y Any en Python]]"
contrasts: []
---

# Uniones y valores opcionales en Python

Forma parte de [[IA graphs/python/Anotaciones de tipos en Python|Anotaciones de tipos en Python]].

Antes de estudiar: [[IA graphs/python/Anotaciones de funciones y variables en Python|Anotaciones de funciones y variables en Python]] · [[IA graphs/python/None en Python|None en Python]] · [[IA graphs/python/Valores por defecto en Python|Valores por defecto en Python]].

Una unión expresa que un valor puede pertenecer a cualquiera de varios tipos.

`int | str` admite ambos; `str | None` representa texto o ausencia. `Optional[str]` de typing expresa esa misma unión con None, no significa que un parámetro pueda omitirse sin valor por defecto.

Una comprobación como `if valor is None:` ayuda al analizador a acotar el tipo en cada rama. Esta descripción estática debe corresponder al comportamiento real de la función.

## Ejemplo verificable

```python
def longitud(texto: str | None) -> int:
    if texto is None:
        return 0
    return len(texto)

print(longitud(None), longitud('sol'))
```

Salida esperada:

```text
0 3
```

## Recuperación activa

> [!question]
> ¿Por qué aceptar None no implica que el argumento sea opcional en la llamada?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/library/typing.html).
