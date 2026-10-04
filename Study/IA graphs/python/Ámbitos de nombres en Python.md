---
title: Ámbitos de nombres en Python
type: concept
python_version: "3.14"
aliases:
  - Scope de Python
tags:
  - python
  - estudio
up:
  - "[[Funciones en Python|Funciones en Python]]"
prerequisites:
  - "[[Variables y asignación en Python|Variables y asignación en Python]]"
  - "[[Definición de funciones en Python|Definición de funciones en Python]]"
parts:
  - "[[Resolución de nombres LEGB en Python|Resolución de nombres LEGB en Python]]"
  - "[[global en Python|global en Python]]"
  - "[[nonlocal en Python|nonlocal en Python]]"
  - "[[Closures en Python|Closures en Python]]"
related: []
contrasts: []
---

# Ámbitos de nombres en Python

Forma parte de [[Funciones en Python|Funciones en Python]].

Antes de estudiar: [[Variables y asignación en Python|Variables y asignación en Python]] · [[Definición de funciones en Python|Definición de funciones en Python]].

Las reglas para localizar y vincular los nombres.

Un ámbito determina dónde se puede resolver una vinculación de nombre. [[Resolución de nombres LEGB en Python|LEGB]] describe el recorrido habitual de búsqueda dentro de funciones.

[[global en Python|global]] dirige asignaciones al módulo y [[nonlocal en Python|nonlocal]] a funciones externas. [[Closures en Python|Una closure]] mantiene acceso a esas vinculaciones cuando la llamada envolvente ya terminó.

## Partes del concepto

- [[Resolución de nombres LEGB en Python|Resolución de nombres LEGB en Python]] — En funciones ordinarias, Python busca nombres en ámbitos local, envolventes, global e incorporado.
- [[global en Python|global en Python]] — global declara que una vinculación usa el espacio de nombres del módulo actual.
- [[nonlocal en Python|nonlocal en Python]] — nonlocal permite reasignar una vinculación de una función envolvente.
- [[Closures en Python|Closures en Python]] — Una closure conserva acceso a vinculaciones de una función externa después de que esa llamada termina.

## Recuperación activa

> [!question]
> ¿Cómo se relacionan las partes de ámbitos de nombres en python y qué función cumple cada una?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/reference/executionmodel.html).
