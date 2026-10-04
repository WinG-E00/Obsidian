---
title: Protocolos del modelo de datos en Python
type: moc
python_version: "3.14"
aliases: []
tags:
  - python
  - estudio
up:
  - "[[Python - Mapa del lenguaje|Python - Mapa del lenguaje]]"
prerequisites:
  - "[[Clases en Python|Clases en Python]]"
  - "[[Métodos y self en Python|Métodos y self en Python]]"
parts:
  - "[[Descriptores en Python|Descriptores en Python]]"
  - "[[Acceso dinámico a atributos en Python|Acceso dinámico a atributos en Python]]"
  - "[[__slots__ en Python|__slots__ en Python]]"
  - "[[Metaclases y creación de clases en Python|Metaclases y creación de clases en Python]]"
  - "[[Introspección en Python|Introspección en Python]]"
  - "[[Métodos especiales en Python|Métodos especiales en Python]]"
  - "[[Gestores de contexto en Python|Gestores de contexto en Python]]"
related: []
contrasts: []
---

# Protocolos del modelo de datos en Python

Forma parte de [[Python - Mapa del lenguaje|Python - Mapa del lenguaje]].

Antes de estudiar: [[Clases en Python|Clases en Python]] · [[Métodos y self en Python|Métodos y self en Python]].

Cómo una clase participa en la sintaxis del lenguaje.

El lenguaje no se limita a operar con tipos incorporados. Busca métodos y mecanismos en clases propias para efectuar llamadas, obtener longitudes, consultar atributos o administrar recursos.

[[Métodos especiales en Python|Los métodos especiales]] dan significado a operaciones; [[Descriptores en Python|los descriptores]] explican properties y vinculación de métodos; [[Gestores de contexto en Python|los gestores de contexto]] estructuran recursos. [[Metaclases y creación de clases en Python|Las metaclases]] llevan la personalización al proceso de creación de clases.

## Partes del concepto

- [[Descriptores en Python|Descriptores en Python]] — Un descriptor personaliza el acceso a un atributo cuando se encuentra en una clase.
- [[Acceso dinámico a atributos en Python|Acceso dinámico a atributos en Python]] — El acceso a atributos puede inspeccionarse o personalizarse mediante funciones y métodos especiales.
- [[__slots__ en Python|__slots__ en Python]] — __slots__ declara un conjunto de ubicaciones de atributos para las instancias de una clase.
- [[Metaclases y creación de clases en Python|Metaclases y creación de clases en Python]] — Una metaclase es el tipo de una clase y puede intervenir en su construcción.
- [[Introspección en Python|Introspección en Python]] — La introspección consulta características de objetos durante la ejecución.
- [[Métodos especiales en Python|Métodos especiales en Python]] — Puntos de integración entre objetos y operaciones del lenguaje.
- [[Gestores de contexto en Python|Gestores de contexto en Python]] — Adquisición y liberación estructurada de recursos.

## Recuperación activa

> [!question]
> ¿Cómo se relacionan las partes de protocolos del modelo de datos en python y qué función cumple cada una?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/reference/datamodel.html).
