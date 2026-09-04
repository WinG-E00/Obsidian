---
title: "Iterador en Python"
type: atomic
python_version: "3.14"
aliases: []
tags:
  - "python"
  - "estudio"
up:
  - "[[IA graphs/python/Iteración en Python|Iteración en Python]]"
prerequisites:
  - "[[IA graphs/python/Iterable en Python|Iterable en Python]]"
parts: []
related:
  - "[[IA graphs/python/Generadores en Python|Generadores en Python]]"
  - "[[IA graphs/python/Bucle for en Python|Bucle for en Python]]"
contrasts:
  - "[[IA graphs/python/Iterable en Python|Iterable en Python]]"
---

# Iterador en Python

Forma parte de [[IA graphs/python/Iteración en Python|Iteración en Python]].

Antes de estudiar: [[IA graphs/python/Iterable en Python|Iterable en Python]].

Un iterador conserva la posición de un recorrido y entrega el siguiente elemento con next.

Su protocolo es `__iter__()`, que devuelve el mismo iterador, y `__next__()`, que entrega un elemento o lanza `StopIteration`. Una vez agotado, debe seguir agotado. `next(it, defecto)` permite elegir un valor en vez de propagar ese final.

Un iterador es iterable, pero un iterable no tiene por qué ser un iterador. Convertirlo en lista o usarlo en una búsqueda puede consumirlo. No se reinicia al pasar a otro `for`: se necesita una nueva fuente o un nuevo iterador si el objeto original los ofrece.

## Ejemplo verificable

```python
it = iter([10, 20])
print(next(it))
print(list(it))
print(next(it, 'fin'))
print(iter(it) is it)
```

Salida esperada:

```text
10
[20]
fin
True
```

## Para comparar

- [[IA graphs/python/Iterable en Python|Iterable en Python]]

## Recuperación activa

> [!question]
> ¿Qué queda disponible después de consumir un iterador con list?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/library/stdtypes.html).
