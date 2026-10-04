---
title: Identificadores y palabras reservadas en Python
type: atomic
python_version: "3.14"
aliases: []
tags:
  - python
  - estudio
up:
  - "[[Sintaxis de Python|Sintaxis de Python]]"
prerequisites: []
parts: []
related:
  - "[[Ámbitos de nombres en Python|Ámbitos de nombres en Python]]"
contrasts: []
---

# Identificadores y palabras reservadas en Python

Forma parte de [[Sintaxis de Python|Sintaxis de Python]].

Un identificador es el nombre que se utiliza para referirse a una entidad.

Los nombres distinguen mayúsculas: `total` y `Total` son diferentes. Pueden contener letras Unicode, guiones bajos y dígitos, pero no empezar con un dígito. Palabras reservadas como `class` o `return` no pueden usarse como nombres ordinarios.

`match`, `case` y `type` tienen usos como palabras clave contextuales. Nombres incorporados como `list` no están reservados, pero reasignarlos oculta la función o tipo original; esto conecta los identificadores con [[Ámbitos de nombres en Python|la resolución de nombres]].

## Ejemplo verificable

```python
total = 2
Total = 9
print(total, Total)
```

Salida esperada:

```text
2 9
```

## Recuperación activa

> [!question]
> ¿Por qué list = [] es legal y aun así puede complicar el programa?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/reference/lexical_analysis.html).
