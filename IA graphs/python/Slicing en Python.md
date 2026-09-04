---
title: "Slicing en Python"
type: atomic
python_version: "3.14"
aliases: []
tags:
  - "python"
  - "estudio"
up:
  - "[[IA graphs/python/Secuencias en Python|Secuencias en Python]]"
prerequisites:
  - "[[IA graphs/python/Indexación en Python|Indexación en Python]]"
parts: []
related:
  - "[[IA graphs/python/Copia superficial y profunda en Python|Copia superficial y profunda en Python]]"
contrasts: []
---

# Slicing en Python

Forma parte de [[IA graphs/python/Secuencias en Python|Secuencias en Python]].

Antes de estudiar: [[IA graphs/python/Indexación en Python|Indexación en Python]].

Un slice describe un recorrido parcial mediante inicio, fin excluido y paso.

`secuencia[inicio:fin:paso]` selecciona posiciones. Los valores omitidos dependen de la dirección del recorrido; `[::-1]` invierte el orden. Un paso cero produce `ValueError`.

En listas, el resultado de un slice es una [[IA graphs/python/Copia superficial y profunda en Python|copia superficial]]. También se puede asignar a un slice de una lista para reemplazar un tramo. En un slice extendido con paso distinto de uno, el reemplazo debe tener la misma cantidad de elementos. El objeto `slice(inicio, fin, paso)` representa esa selección y expone `start`, `stop`, `step` de solo lectura.

## Ejemplo verificable

```python
datos = [0, 1, 2, 3, 4]
print(datos[1:4:2])
print(datos[::-1])
print(datos[20:30])
```

Salida esperada:

```text
[1, 3]
[4, 3, 2, 1, 0]
[]
```

## Recuperación activa

> [!question]
> ¿Por qué datos[20:30] no produce el mismo error que datos[20]?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/library/stdtypes.html).
