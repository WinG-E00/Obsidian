---
title: "Bucle for en Python"
type: atomic
python_version: "3.14"
aliases: []
tags:
  - "python"
  - "estudio"
up:
  - "[[IA graphs/python/Estructuras de control en Python|Estructuras de control en Python]]"
prerequisites:
  - "[[IA graphs/python/Iterable en Python|Iterable en Python]]"
  - "[[IA graphs/python/Variables y asignación en Python|Variables y asignación en Python]]"
parts: []
related:
  - "[[IA graphs/python/Iterador en Python|Iterador en Python]]"
  - "[[IA graphs/python/range en Python|range en Python]]"
  - "[[IA graphs/python/enumerate en Python|enumerate en Python]]"
contrasts: []
---

# Bucle for en Python

Forma parte de [[IA graphs/python/Estructuras de control en Python|Estructuras de control en Python]].

Antes de estudiar: [[IA graphs/python/Iterable en Python|Iterable en Python]] · [[IA graphs/python/Variables y asignación en Python|Variables y asignación en Python]].

for obtiene elementos de un iterable hasta agotar su iterador.

No significa aumentar un contador obligatoriamente: recorre los valores que entregue el objeto. Para repetir con enteros se usa [[IA graphs/python/range en Python|range]]; para posiciones y valores, [[IA graphs/python/enumerate en Python|enumerate]].

La variable del bucle se reasigna en cada vuelta. Cambiarla dentro del bloque no altera automáticamente el próximo elemento del recorrido. Modificar el tamaño del contenedor recorrido puede saltar elementos o provocar errores; cuando corresponde, se recorre una copia o se construye otra colección.

## Ejemplo verificable

```python
total = 0
for numero in [2, 4, 6]:
    total += numero
print(total)
```

Salida esperada:

```text
12
```

## Recuperación activa

> [!question]
> ¿De dónde obtiene for su siguiente valor?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/reference/compound_stmts.html).
