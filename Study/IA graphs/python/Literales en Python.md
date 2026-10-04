---
title: Literales en Python
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
  - "[[str en Python|str en Python]]"
  - "[[f-strings en Python|f-strings en Python]]"
contrasts: []
---

# Literales en Python

Forma parte de [[Sintaxis de Python|Sintaxis de Python]].

Un literal escribe directamente un valor en el código fuente.

`42`, `0b1010`, `3.5`, `2j`, `'hola'`, `True` y `None` permiten escribir valores sin calcularlos a partir de otros nombres. Las comillas simples y dobles sirven para texto; las triples permiten incluir saltos de línea. El prefijo `r` cambia cómo se interpretan las barras invertidas, pero un literal raw no puede terminar con un número impar de barras invertidas.

`[1, 2]` y `{'a': 1}` suelen llamarse literales de colección informalmente; la referencia los trata como construcciones que evalúan sus elementos. Una [[f-strings en Python|f-string]] también evalúa expresiones.

En la gramática estricta, `True`, `False` y `None` son constantes incorporadas; un número negativo es una operación unaria sobre un literal positivo. La distinción evita confundir la forma cotidiana de hablar de valores con sus categorías sintácticas.

## Ejemplo verificable

```python
print(0b1010, 0x10, 1_000)
print(r'a\nb')
```

Salida esperada:

```text
10 16 1000
a\nb
```

## Recuperación activa

> [!question]
> ¿Qué valor representan 0b1010 y 1_000?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/reference/lexical_analysis.html).
