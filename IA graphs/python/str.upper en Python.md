---
title: "str.upper en Python"
type: method
python_version: "3.14"
aliases: []
tags:
  - "python"
  - "estudio"
  - "api"
up:
  - "[[IA graphs/python/str en Python|str en Python]]"
prerequisites:
  - "[[IA graphs/python/str en Python|str en Python]]"
  - "[[IA graphs/python/Unicode y codificación en Python|Unicode y codificación en Python]]"
parts: []
related: []
contrasts: []
---

# str.upper en Python

Forma parte de [[IA graphs/python/str en Python|str en Python]].

Antes de estudiar: [[IA graphs/python/str en Python|str en Python]] · [[IA graphs/python/Unicode y codificación en Python|Unicode y codificación en Python]].

str.upper devuelve el texto transformado a mayúsculas según Unicode.

Firma: `texto.upper() -> str`. No recibe argumentos ni muta el receptor. La transformación puede cambiar la cantidad de puntos de código, por lo que no siempre preserva la longitud.

Para comparar texto sin distinguir mayúsculas en muchos contextos Unicode, `casefold()` suele expresar mejor esa intención. Ninguno de estos métodos decide por sí solo reglas de ordenación o equivalencia específicas de una aplicación.

## Ejemplo verificable

```python
original = 'Straße'
mayusculas = original.upper()
print(original)
print(mayusculas)
```

Salida esperada:

```text
Straße
STRASSE
```

## Recuperación activa

> [!question]
> ¿Por qué no se puede asumir que upper conserva la longitud?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/library/stdtypes.html).
