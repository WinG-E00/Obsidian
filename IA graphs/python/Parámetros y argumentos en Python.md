---
title: "Parámetros y argumentos en Python"
type: concept
python_version: "3.14"
aliases: []
tags:
  - "python"
  - "estudio"
up:
  - "[[IA graphs/python/Funciones en Python|Funciones en Python]]"
prerequisites:
  - "[[IA graphs/python/Definición de funciones en Python|Definición de funciones en Python]]"
parts:
  - "[[IA graphs/python/Clases de parámetros en Python|Clases de parámetros en Python]]"
  - "[[IA graphs/python/Valores por defecto en Python|Valores por defecto en Python]]"
  - "[[IA graphs/python/args y kwargs en Python|args y kwargs en Python]]"
  - "[[IA graphs/python/Desempaquetado en Python|Desempaquetado en Python]]"
related: []
contrasts: []
---

# Parámetros y argumentos en Python

Forma parte de [[IA graphs/python/Funciones en Python|Funciones en Python]].

Antes de estudiar: [[IA graphs/python/Definición de funciones en Python|Definición de funciones en Python]].

El contrato entre la definición y la llamada de una función.

La definición declara parámetros; la llamada proporciona argumentos. [[IA graphs/python/Clases de parámetros en Python|Las clases de parámetros]] fijan qué puede ir por posición o por nombre y [[IA graphs/python/Valores por defecto en Python|los valores por defecto]] resuelven omisiones.

[[IA graphs/python/args y kwargs en Python|args y kwargs]] recogen cantidades variables. [[IA graphs/python/Desempaquetado en Python|El desempaquetado]] realiza la operación inversa al expandir datos hacia una llamada y también distribuye elementos en asignaciones.

## Partes del concepto

- [[IA graphs/python/Clases de parámetros en Python|Clases de parámetros en Python]] — La posición de / y * en una firma define cómo puede pasarse cada argumento.
- [[IA graphs/python/Valores por defecto en Python|Valores por defecto en Python]] — Los valores por defecto se evalúan cuando se ejecuta la definición de la función.
- [[IA graphs/python/args y kwargs en Python|args y kwargs en Python]] — *args recoge argumentos posicionales extra y **kwargs recoge argumentos por nombre extra.
- [[IA graphs/python/Desempaquetado en Python|Desempaquetado en Python]] — Desempaquetar distribuye elementos o asociaciones en varios destinos.

## Recuperación activa

> [!question]
> ¿Cómo se relacionan las partes de parámetros y argumentos en python y qué función cumple cada una?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/tutorial/controlflow.html).
