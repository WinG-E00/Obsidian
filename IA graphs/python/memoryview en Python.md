---
title: "memoryview en Python"
type: api-object
python_version: "3.14"
aliases: []
tags:
  - "python"
  - "estudio"
  - "api"
up:
  - "[[IA graphs/python/Datos binarios en Python|Datos binarios en Python]]"
prerequisites:
  - "[[IA graphs/python/bytearray en Python|bytearray en Python]]"
  - "[[IA graphs/python/Variables y asignación en Python|Variables y asignación en Python]]"
parts: []
related:
  - "[[IA graphs/python/Sentencia with en Python|Sentencia with en Python]]"
contrasts: []
---

# memoryview en Python

Forma parte de [[IA graphs/python/Datos binarios en Python|Datos binarios en Python]].

Antes de estudiar: [[IA graphs/python/bytearray en Python|bytearray en Python]] · [[IA graphs/python/Variables y asignación en Python|Variables y asignación en Python]].

memoryview permite acceder al almacenamiento de otro objeto sin copiar inicialmente sus datos.

`memoryview(objeto)` requiere un objeto que exporte un búfer, como `bytes` o `bytearray`. Una vista de un bytearray permite escrituras compatibles; una vista de bytes es de solo lectura.

Propiedades de lectura: `readonly: bool`, `nbytes: int`, `format: str`, `itemsize: int`, `ndim: int`, `shape: tuple`, `strides: tuple` y `obj`, el objeto subyacente. En `memoryview(b'AB')`, `nbytes` es 2, `format` es `'B'` y `shape` es `(2,)`.

`tobytes() -> bytes` copia; `tolist() -> list` materializa valores; `hex() -> str` representa los bytes; `release() -> None` libera la vista; `cast(format, shape=...)` crea otra vista cuando formato y contigüidad lo permiten. Después de liberar, muchas operaciones generan `ValueError`. Puede usarse con [[IA graphs/python/Sentencia with en Python|with]].

## Ejemplo verificable

```python
datos = bytearray(b'AB')
with memoryview(datos) as vista:
    vista[0] = 67
    print(vista.readonly, vista.nbytes)
print(datos)
```

Salida esperada:

```text
False 2
bytearray(b'CB')
```

## Recuperación activa

> [!question]
> ¿Por qué escribir en la vista cambia el bytearray original?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/library/stdtypes.html).
