---
title: "bytearray en Python"
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
  - "[[IA graphs/python/bytes en Python|bytes en Python]]"
  - "[[IA graphs/python/Mutabilidad en Python|Mutabilidad en Python]]"
parts: []
related:
  - "[[IA graphs/python/memoryview en Python|memoryview en Python]]"
contrasts:
  - "[[IA graphs/python/bytes en Python|bytes en Python]]"
---

# bytearray en Python

Forma parte de [[IA graphs/python/Datos binarios en Python|Datos binarios en Python]].

Antes de estudiar: [[IA graphs/python/bytes en Python|bytes en Python]] · [[IA graphs/python/Mutabilidad en Python|Mutabilidad en Python]].

bytearray permite modificar una secuencia de bytes.

`bytearray(source=b'')` acepta bytes, tamaño o un iterable de enteros válidos; desde texto requiere codificación. Los valores deben estar entre 0 y 255 o se produce `ValueError`.

Interfaz principal: `append(int)`, `extend(iterable)`, `insert(indice, int)`, `remove(int)`, `clear()` y `reverse()` mutan y devuelven `None`; `pop(index=-1)` muta y devuelve `int`; `copy()` devuelve un `bytearray` superficial. Las operaciones de texto binario como `decode` o `hex` devuelven `str` y no mutan. No expone propiedades editables que sustituyan la indexación.

Una [[IA graphs/python/memoryview en Python|vista de memoria]] puede compartir este almacenamiento. Un bytearray no es hashable.

## Ejemplo verificable

```python
datos = bytearray(b'AB')
datos[0] = 67
print(datos)
print(datos.pop())
print(datos.decode('ascii'))
```

Salida esperada:

```text
bytearray(b'CB')
66
C
```

## Para comparar

- [[IA graphs/python/bytes en Python|bytes en Python]]

## Recuperación activa

> [!question]
> ¿Qué cambia al reemplazar bytes por bytearray?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/library/stdtypes.html).
