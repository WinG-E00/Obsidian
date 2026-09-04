---
title: "continue en Python"
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
  - "[[IA graphs/python/break en Python|break en Python]]"
  - "[[IA graphs/python/Bucle while en Python|Bucle while en Python]]"
contrasts:
  - "[[IA graphs/python/break en Python|break en Python]]"
---

# continue en Python

Forma parte de [[IA graphs/python/Estructuras de control en Python|Estructuras de control en Python]].

Antes de estudiar: [[IA graphs/python/Bucle for en Python|Bucle for en Python]] · [[IA graphs/python/Condicional if en Python|Condicional if en Python]].

continue omite lo que resta de la vuelta actual y pasa a la siguiente.

En `for`, se solicita el próximo elemento; en `while`, se vuelve a evaluar la condición. No termina el bucle y por sí mismo no impide su cláusula `else`.

En un `while`, colocar el cambio de estado después de `continue` puede impedir que ocurra y causar repetición infinita. Esta diferencia con [[IA graphs/python/break en Python|break]] es el núcleo de la instrucción.

## Ejemplo verificable

```python
for numero in [1, 2, 3, 4]:
    if numero % 2:
        continue
    print(numero)
```

Salida esperada:

```text
2
4
```

## Para comparar

- [[IA graphs/python/break en Python|break en Python]]

## Recuperación activa

> [!question]
> ¿Qué parte del cuerpo deja de ejecutarse al llegar a continue?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/reference/simple_stmts.html).
