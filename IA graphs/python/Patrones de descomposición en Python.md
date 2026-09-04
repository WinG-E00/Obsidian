---
title: "Patrones de descomposición en Python"
type: atomic
python_version: "3.14"
aliases: []
tags:
  - "python"
  - "estudio"
up:
  - "[[IA graphs/python/Coincidencia de patrones con match en Python|Coincidencia de patrones con match en Python]]"
prerequisites:
  - "[[IA graphs/python/Coincidencia de patrones con match en Python|Coincidencia de patrones con match en Python]]"
  - "[[IA graphs/python/Desempaquetado en Python|Desempaquetado en Python]]"
parts: []
related:
  - "[[IA graphs/python/Clases en Python|Clases en Python]]"
contrasts: []
---

# Patrones de descomposición en Python

Forma parte de [[IA graphs/python/Coincidencia de patrones con match en Python|Coincidencia de patrones con match en Python]].

Antes de estudiar: [[IA graphs/python/Coincidencia de patrones con match en Python|Coincidencia de patrones con match en Python]] · [[IA graphs/python/Desempaquetado en Python|Desempaquetado en Python]].

Un patrón puede extraer partes de un valor si este tiene la estructura requerida.

Los patrones de secuencia aceptan elementos y una captura con estrella; no tratan str, bytes o bytearray como secuencias para esta coincidencia. Los de mapeo exigen las claves indicadas y pueden ignorar otras o capturarlas con `**resto`.

Un patrón de clase como `Punto(x=x)` comprueba clase y atributos; los campos posicionales dependen de `__match_args__`, una tupla de nombres. Una guarda `if` se evalúa después de vincular las capturas. No conviene depender de capturas parciales de un patrón que falló.

## Ejemplo verificable

```python
dato = [1, 2, 3]
match dato:
    case [primero, *resto]:
        print(primero, resto)
```

Salida esperada:

```text
1 [2, 3]
```

## Recuperación activa

> [!question]
> ¿Qué diferencias hay entre capturar elementos de una secuencia y claves de un mapeo?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/reference/compound_stmts.html).
