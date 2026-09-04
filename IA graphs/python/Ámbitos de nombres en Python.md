---
title: "Ámbitos de nombres en Python"
type: concept
python_version: "3.14"
aliases:
  - "Scope de Python"
tags:
  - "python"
  - "estudio"
up:
  - "[[IA graphs/python/Funciones en Python|Funciones en Python]]"
prerequisites:
  - "[[IA graphs/python/Variables y asignación en Python|Variables y asignación en Python]]"
  - "[[IA graphs/python/Definición de funciones en Python|Definición de funciones en Python]]"
parts:
  - "[[IA graphs/python/Resolución de nombres LEGB en Python|Resolución de nombres LEGB en Python]]"
  - "[[IA graphs/python/global en Python|global en Python]]"
  - "[[IA graphs/python/nonlocal en Python|nonlocal en Python]]"
  - "[[IA graphs/python/Closures en Python|Closures en Python]]"
related: []
contrasts: []
---

# Ámbitos de nombres en Python

Forma parte de [[IA graphs/python/Funciones en Python|Funciones en Python]].

Antes de estudiar: [[IA graphs/python/Variables y asignación en Python|Variables y asignación en Python]] · [[IA graphs/python/Definición de funciones en Python|Definición de funciones en Python]].

Las reglas para localizar y vincular los nombres.

Un ámbito determina dónde se puede resolver una vinculación de nombre. [[IA graphs/python/Resolución de nombres LEGB en Python|LEGB]] describe el recorrido habitual de búsqueda dentro de funciones.

[[IA graphs/python/global en Python|global]] dirige asignaciones al módulo y [[IA graphs/python/nonlocal en Python|nonlocal]] a funciones externas. [[IA graphs/python/Closures en Python|Una closure]] mantiene acceso a esas vinculaciones cuando la llamada envolvente ya terminó.

## Partes del concepto

- [[IA graphs/python/Resolución de nombres LEGB en Python|Resolución de nombres LEGB en Python]] — En funciones ordinarias, Python busca nombres en ámbitos local, envolventes, global e incorporado.
- [[IA graphs/python/global en Python|global en Python]] — global declara que una vinculación usa el espacio de nombres del módulo actual.
- [[IA graphs/python/nonlocal en Python|nonlocal en Python]] — nonlocal permite reasignar una vinculación de una función envolvente.
- [[IA graphs/python/Closures en Python|Closures en Python]] — Una closure conserva acceso a vinculaciones de una función externa después de que esa llamada termina.

## Recuperación activa

> [!question]
> ¿Cómo se relacionan las partes de ámbitos de nombres en python y qué función cumple cada una?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/reference/executionmodel.html).
