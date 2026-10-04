---
title: Datos binarios en Python
type: concept
python_version: "3.14"
aliases: []
tags:
  - python
  - estudio
up:
  - "[[Tipos de datos en Python|Tipos de datos en Python]]"
prerequisites:
  - "[[int en Python|int en Python]]"
parts:
  - "[[bytes en Python|bytes en Python]]"
  - "[[bytearray en Python|bytearray en Python]]"
  - "[[memoryview en Python|memoryview en Python]]"
related: []
contrasts: []
---

# Datos binarios en Python

Forma parte de [[Tipos de datos en Python|Tipos de datos en Python]].

Antes de estudiar: [[int en Python|int en Python]].

Bytes y vistas de memoria que se distinguen del texto.

Los datos binarios son unidades de almacenamiento, no texto interpretado automáticamente. [[bytes en Python|bytes]] conserva una secuencia inmutable; [[bytearray en Python|bytearray]] permite modificarla y [[memoryview en Python|memoryview]] permite compartir acceso a almacenamiento existente.

[[Unicode y codificación en Python|Una codificación]] es el puente entre estos datos y [[str en Python|str]]. Elegir binario o texto cambia los valores recibidos al indexar y los contratos de entrada y salida.

## Partes del concepto

- [[bytes en Python|bytes en Python]] — bytes es una secuencia inmutable de enteros entre 0 y 255.
- [[bytearray en Python|bytearray en Python]] — bytearray permite modificar una secuencia de bytes.
- [[memoryview en Python|memoryview en Python]] — memoryview permite acceder al almacenamiento de otro objeto sin copiar inicialmente sus datos.

## Recuperación activa

> [!question]
> ¿Cómo se relacionan las partes de datos binarios en python y qué función cumple cada una?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/library/stdtypes.html).
