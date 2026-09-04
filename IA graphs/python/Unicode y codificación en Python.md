---
title: "Unicode y codificación en Python"
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
  - "[[IA graphs/python/bytes en Python|bytes en Python]]"
  - "[[IA graphs/python/Archivos y open en Python|Archivos y open en Python]]"
contrasts: []
---

# Unicode y codificación en Python

Forma parte de [[IA graphs/python/str en Python|str en Python]].

Antes de estudiar: [[IA graphs/python/str en Python|str en Python]].

Unicode identifica caracteres; una codificación define cómo representarlos mediante bytes.

Un `str` almacena puntos de código, mientras [[IA graphs/python/bytes en Python|bytes]] representa enteros entre 0 y 255. `texto.encode('utf-8')` pasa a bytes; `datos.decode('utf-8')` reconstruye texto. La codificación usada debe corresponder a los datos.

`len(texto)` cuenta puntos de código, no bytes ni necesariamente símbolos visuales. Una letra y un acento combinante pueden ocupar dos posiciones. Los errores de decodificación no se arreglan cambiando al azar la codificación: hay que conocer el formato de entrada.

## Ejemplo verificable

```python
texto = 'ñ'
datos = texto.encode('utf-8')
print(len(texto), len(datos))
print(datos.decode('utf-8'))
```

Salida esperada:

```text
1 2
ñ
```

## Recuperación activa

> [!question]
> ¿Por qué la longitud de un texto puede diferir de la de sus bytes?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/reference/lexical_analysis.html).
