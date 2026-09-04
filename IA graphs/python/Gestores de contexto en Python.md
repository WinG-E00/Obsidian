---
title: "Gestores de contexto en Python"
type: concept
python_version: "3.14"
aliases: []
tags:
  - "python"
  - "estudio"
up:
  - "[[IA graphs/python/Protocolos del modelo de datos en Python|Protocolos del modelo de datos en Python]]"
prerequisites: []
parts:
  - "[[IA graphs/python/Sentencia with en Python|Sentencia with en Python]]"
  - "[[IA graphs/python/Gestores con contextlib.contextmanager en Python|Gestores con contextlib.contextmanager en Python]]"
related: []
contrasts: []
---

# Gestores de contexto en Python

Forma parte de [[IA graphs/python/Protocolos del modelo de datos en Python|Protocolos del modelo de datos en Python]].

Adquisición y liberación estructurada de recursos.

Un gestor de contexto relaciona la entrada a un bloque con la limpieza al salir. Puede administrar archivos, bloqueos u otros recursos, aunque el mecanismo no está limitado a recursos externos.

[[IA graphs/python/Sentencia with en Python|with]] consume el protocolo y [[IA graphs/python/Gestores con contextlib.contextmanager en Python|contextmanager]] permite implementarlo mediante un generador. [[IA graphs/python/Gestores de contexto asíncronos en Python|La variante asíncrona]] añade espera durante adquisición y salida.

## Partes del concepto

- [[IA graphs/python/Sentencia with en Python|Sentencia with en Python]] — with usa un gestor de contexto para delimitar el uso de un recurso.
- [[IA graphs/python/Gestores con contextlib.contextmanager en Python|Gestores con contextlib.contextmanager en Python]] — contextmanager convierte un generador con una entrega en un gestor de contexto.

## Recuperación activa

> [!question]
> ¿Cómo se relacionan las partes de gestores de contexto en python y qué función cumple cada una?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/reference/index.html).
