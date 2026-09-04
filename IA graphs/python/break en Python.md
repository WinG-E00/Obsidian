---
title: "break en Python"
type: atomic
python_version: "3.14"
aliases: []
tags:
  - "python"
  - "estudio"
up:
  - "[[IA graphs/python/Estructuras de control en Python|Estructuras de control en Python]]"
prerequisites:
  - "[[IA graphs/python/Bucle for en Python|Bucle for en Python]]"
  - "[[IA graphs/python/Condicional if en Python|Condicional if en Python]]"
parts: []
related:
  - "[[IA graphs/python/continue en Python|continue en Python]]"
  - "[[IA graphs/python/Retorno de funciones en Python|Retorno de funciones en Python]]"
  - "[[IA graphs/python/else en bucles en Python|else en bucles en Python]]"
contrasts:
  - "[[IA graphs/python/continue en Python|continue en Python]]"
---

# break en Python

Forma parte de [[IA graphs/python/Estructuras de control en Python|Estructuras de control en Python]].

Antes de estudiar: [[IA graphs/python/Bucle for en Python|Bucle for en Python]] · [[IA graphs/python/Condicional if en Python|Condicional if en Python]].

break termina inmediatamente el bucle más interno que lo contiene.

Después de `break`, la ejecución continúa después del bucle. No termina todos los bucles anidados ni retorna desde una función. Además, impide ejecutar el [[IA graphs/python/else en bucles en Python|else del bucle]].

Si hay un `finally` activo al salir, se ejecuta la limpieza correspondiente. Para salir de una función completa se necesita [[IA graphs/python/Retorno de funciones en Python|return]].

## Ejemplo verificable

```python
for numero in [2, 4, 7, 8]:
    if numero % 2:
        print(numero)
        break
print('fin')
```

Salida esperada:

```text
7
fin
```

## Para comparar

- [[IA graphs/python/continue en Python|continue en Python]]

## Recuperación activa

> [!question]
> ¿Qué bucle termina break cuando hay dos bucles anidados?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/reference/simple_stmts.html).
