---
title: Ellipsis en Python
type: atomic
python_version: "3.14"
aliases: []
tags:
  - python
  - estudio
up:
  - "[[Tipos de datos en Python|Tipos de datos en Python]]"
prerequisites: []
parts: []
related:
  - "[[pass en Python|pass en Python]]"
  - "[[Genéricos en Python|Genéricos en Python]]"
contrasts: []
---

# Ellipsis en Python

Forma parte de [[Tipos de datos en Python|Tipos de datos en Python]].

Ellipsis es el objeto único que se escribe mediante el literal ... .

Puede actuar como marcador en código incompleto o como parte de la notación de tipos, por ejemplo `tuple[int, ...]`. Algunos tipos externos le asignan significado en indexación, pero una lista incorporada no admite automáticamente `lista[...]`.

A diferencia de [[None en Python|None]], su valor de verdad es verdadero. Una sentencia que contiene solo `...` evalúa ese objeto y descarta el resultado; no es la misma construcción sintáctica que [[pass en Python|pass]].

## Ejemplo verificable

```python
print(... is Ellipsis)
print(bool(Ellipsis))
```

Salida esperada:

```text
True
True
```

## Recuperación activa

> [!question]
> ¿El literal ... hace que cualquier contenedor admita indexación multidimensional?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/reference/datamodel.html).
