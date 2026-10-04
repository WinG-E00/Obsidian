---
title: bytes en Python
type: api-object
python_version: "3.14"
aliases: []
tags:
  - python
  - estudio
  - api
up:
  - "[[Datos binarios en Python|Datos binarios en Python]]"
prerequisites:
  - "[[Indexación en Python|Indexación en Python]]"
  - "[[Unicode y codificación en Python|Unicode y codificación en Python]]"
parts: []
related:
  - "[[bytearray en Python|bytearray en Python]]"
contrasts:
  - "[[bytearray en Python|bytearray en Python]]"
---

# bytes en Python

Forma parte de [[Datos binarios en Python|Datos binarios en Python]].

Antes de estudiar: [[Indexación en Python|Indexación en Python]] · [[Unicode y codificación en Python|Unicode y codificación en Python]].

bytes es una secuencia inmutable de enteros entre 0 y 255.

Se crea con `b'ABC'`, `bytes([65, 66])` o mediante [[Unicode y codificación en Python|codificación]]. `datos[0]` devuelve `int`, mientras `datos[:1]` devuelve `bytes`. Un literal bytes solo admite caracteres ASCII directos; los restantes se representan con escapes o codificación.

Interfaz principal: `decode(encoding='utf-8', errors='strict') -> str` reconstruye texto y puede producir `UnicodeDecodeError`; `hex() -> str` representa los bytes en hexadecimal; `bytes.fromhex(texto) -> bytes` hace la operación inversa y puede producir `ValueError`. `split`, `join`, `replace`, `find`, `startswith` y `strip` tienen versiones orientadas a bytes, no a texto Unicode. No hay propiedades de contenido editables.

`bytes(3)` produce tres bytes cero, no el texto `'3'`. Ninguna transformación del receptor muta el objeto.

## Ejemplo verificable

```python
datos = b'AB'
print(datos[0], datos[:1])
print(datos.hex())
print(bytes.fromhex('4142').decode('ascii'))
```

Salida esperada:

```text
65 b'A'
4142
AB
```

## Para comparar

- [[bytearray en Python|bytearray en Python]]

## Recuperación activa

> [!question]
> ¿Qué tipo devuelve indexar bytes y qué tipo devuelve un slice?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/library/stdtypes.html).
