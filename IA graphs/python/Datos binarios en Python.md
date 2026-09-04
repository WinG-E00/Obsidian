---
title: "Datos binarios en Python"
type: concept
python_version: "3.14"
aliases: []
tags:
  - "python"
  - "estudio"
up:
  - "[[IA graphs/python/Tipos de datos en Python|Tipos de datos en Python]]"
prerequisites:
  - "[[IA graphs/python/int en Python|int en Python]]"
parts:
  - "[[IA graphs/python/bytes en Python|bytes en Python]]"
  - "[[IA graphs/python/bytearray en Python|bytearray en Python]]"
  - "[[IA graphs/python/memoryview en Python|memoryview en Python]]"
related: []
contrasts: []
---

# Datos binarios en Python

Forma parte de [[IA graphs/python/Tipos de datos en Python|Tipos de datos en Python]].

Antes de estudiar: [[IA graphs/python/int en Python|int en Python]].

Bytes y vistas de memoria que se distinguen del texto.

Los datos binarios son unidades de almacenamiento, no texto interpretado automáticamente. [[IA graphs/python/bytes en Python|bytes]] conserva una secuencia inmutable; [[IA graphs/python/bytearray en Python|bytearray]] permite modificarla y [[IA graphs/python/memoryview en Python|memoryview]] permite compartir acceso a almacenamiento existente.

[[IA graphs/python/Unicode y codificación en Python|Una codificación]] es el puente entre estos datos y [[IA graphs/python/str en Python|str]]. Elegir binario o texto cambia los valores recibidos al indexar y los contratos de entrada y salida.

## Partes del concepto

- [[IA graphs/python/bytes en Python|bytes en Python]] — bytes es una secuencia inmutable de enteros entre 0 y 255.
- [[IA graphs/python/bytearray en Python|bytearray en Python]] — bytearray permite modificar una secuencia de bytes.
- [[IA graphs/python/memoryview en Python|memoryview en Python]] — memoryview permite acceder al almacenamiento de otro objeto sin copiar inicialmente sus datos.

## Recuperación activa

> [!question]
> ¿Cómo se relacionan las partes de datos binarios en python y qué función cumple cada una?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/library/stdtypes.html).
