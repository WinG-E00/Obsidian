---
title: enumerate en Python
type: atomic
python_version: "3.14"
aliases: []
tags:
  - python
  - estudio
up:
  - "[[Iteración en Python|Iteración en Python]]"
prerequisites:
  - "[[Iterador en Python|Iterador en Python]]"
  - "[[tuple en Python|tuple en Python]]"
parts: []
related:
  - "[[Bucle for en Python|Bucle for en Python]]"
  - "[[Desempaquetado en Python|Desempaquetado en Python]]"
contrasts: []
---

# enumerate en Python

Forma parte de [[Iteración en Python|Iteración en Python]].

Antes de estudiar: [[Iterador en Python|Iterador en Python]] · [[tuple en Python|tuple en Python]].

enumerate produce pares de contador y elemento durante un recorrido.

Firma: `enumerate(iterable, start=0)`. Devuelve un iterador cuyos elementos son tuplas `(int, objeto)`. No necesita materializar el iterable y el contador no tiene que ser un índice válido del objeto original.

Se combina con [[Desempaquetado en Python|desempaquetado]] en `for indice, valor in ...`. Un objeto enumerate se consume; para repetir el recorrido hay que crearlo nuevamente a partir de una fuente reutilizable.

## Ejemplo verificable

```python
for numero, nombre in enumerate(['Ana', 'Luz'], start=1):
    print(numero, nombre)
```

Salida esperada:

```text
1 Ana
2 Luz
```

## Recuperación activa

> [!question]
> ¿Por qué start=1 no cambia las posiciones internas de la lista?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/library/functions.html).
