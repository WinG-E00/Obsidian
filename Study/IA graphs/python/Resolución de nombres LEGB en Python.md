---
title: Resolución de nombres LEGB en Python
type: atomic
python_version: "3.14"
aliases: []
tags:
  - python
  - estudio
up:
  - "[[Ámbitos de nombres en Python|Ámbitos de nombres en Python]]"
prerequisites:
  - "[[Definición de funciones en Python|Definición de funciones en Python]]"
  - "[[Variables y asignación en Python|Variables y asignación en Python]]"
parts: []
related:
  - "[[global en Python|global en Python]]"
  - "[[nonlocal en Python|nonlocal en Python]]"
  - "[[Closures en Python|Closures en Python]]"
contrasts: []
---

# Resolución de nombres LEGB en Python

Forma parte de [[Ámbitos de nombres en Python|Ámbitos de nombres en Python]].

Antes de estudiar: [[Definición de funciones en Python|Definición de funciones en Python]] · [[Variables y asignación en Python|Variables y asignación en Python]].

En funciones ordinarias, Python busca nombres en ámbitos local, envolventes, global e incorporado.

Local corresponde a la llamada actual; envolvente, a funciones externas; global, al módulo; incorporado, a `builtins`. Si el cuerpo asigna a un nombre, normalmente lo considera local en todo ese bloque; leerlo antes de asignarlo puede producir `UnboundLocalError`.

LEGB es una guía, no toda la semántica: cuerpos de clases, comprensiones y ámbitos de anotaciones tienen reglas particulares. `if` y `for` no crean por sí mismos un nuevo ámbito local de función. [[global en Python|global]] y [[nonlocal en Python|nonlocal]] modifican la vinculación elegida.

## Ejemplo verificable

```python
valor = 'módulo'
def externa():
    valor = 'envolvente'
    def interna():
        return valor
    return interna()

print(externa())
print(valor)
```

Salida esperada:

```text
envolvente
módulo
```

## Recuperación activa

> [!question]
> ¿Por qué una asignación dentro de una función puede cambiar cómo se resuelve un nombre anterior?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/reference/executionmodel.html).
