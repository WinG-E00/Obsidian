---
title: Intérprete interactivo en Python
type: atomic
python_version: "3.14"
aliases: []
tags:
  - python
  - estudio
up:
  - "[[Fundamentos de Python|Fundamentos de Python]]"
prerequisites:
  - "[[Ejecución de un programa en Python|Ejecución de un programa en Python]]"
parts: []
related:
  - "[[Entrada y salida por consola en Python|Entrada y salida por consola en Python]]"
contrasts: []
---

# Intérprete interactivo en Python

Forma parte de [[Fundamentos de Python|Fundamentos de Python]].

Antes de estudiar: [[Ejecución de un programa en Python|Ejecución de un programa en Python]].

El REPL permite evaluar fragmentos y observar resultados de inmediato.

Se inicia con `python3` sin archivo. El prompt `>>>` espera una instrucción y `...` continúa un bloque. Esos prompts no se copian dentro de un script. En una sesión interactiva una expresión muestra su representación; en un script se necesita [[Entrada y salida por consola en Python|print]] para verla.

Los nombres permanecen entre entradas de la misma sesión. Por eso conviene comprobar ejemplos en una sesión limpia cuando parece faltar una variable. `help(str)` muestra documentación y `exit()` termina la sesión.

## Ejemplo verificable

```python
resultado = 8 + 2
print(resultado)
```

Salida esperada:

```text
10
```

## Recuperación activa

> [!question]
> ¿Por qué escribir 8 + 2 muestra algo en el REPL pero no en un script?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/tutorial/introduction.html).
