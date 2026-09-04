---
title: "Protocolo de contenedores en Python"
type: atomic
python_version: "3.14"
aliases: []
tags:
  - "python"
  - "estudio"
up:
  - "[[IA graphs/python/Métodos especiales en Python|Métodos especiales en Python]]"
prerequisites:
  - "[[IA graphs/python/Clases en Python|Clases en Python]]"
  - "[[IA graphs/python/Indexación en Python|Indexación en Python]]"
  - "[[IA graphs/python/Slicing en Python|Slicing en Python]]"
parts: []
related:
  - "[[IA graphs/python/Iterador en Python|Iterador en Python]]"
  - "[[IA graphs/python/Operadores de pertenencia en Python|Operadores de pertenencia en Python]]"
contrasts: []
---

# Protocolo de contenedores en Python

Forma parte de [[IA graphs/python/Métodos especiales en Python|Métodos especiales en Python]].

Antes de estudiar: [[IA graphs/python/Clases en Python|Clases en Python]] · [[IA graphs/python/Indexación en Python|Indexación en Python]] · [[IA graphs/python/Slicing en Python|Slicing en Python]].

Los métodos de contenedor permiten que un tipo propio participe en len, índices y pertenencia.

`__len__(self) -> int` informa una longitud no negativa; `__getitem__(self, clave)` resuelve consultas; `__setitem__` y `__delitem__` implementan cambios; `__contains__(self, valor)` define pertenencia. El soporte depende de los métodos presentes, no del nombre de la clase.

Un `slice` llega a `__getitem__` como objeto de selección. El ejemplo delega en una lista y ofrece `len(caja)`, `caja[indice_o_slice]` y `valor in caja`, sin métodos de escritura públicos. Para iteración explícita se implementa [[IA graphs/python/Iterador en Python|el protocolo iterador]] o `__iter__`.

## Ejemplo verificable

```python
class Caja:
    def __init__(self, datos):
        self._datos = list(datos)
    def __len__(self):
        return len(self._datos)
    def __getitem__(self, indice):
        return self._datos[indice]
    def __contains__(self, valor):
        return valor in self._datos

caja = Caja([4, 5, 6])
print(len(caja), caja[1], 6 in caja)
print(caja[:2])
```

Salida esperada:

```text
3 5 True
[4, 5]
```

## Recuperación activa

> [!question]
> ¿Qué método recibe un objeto slice cuando se escribe caja[:2]?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/reference/datamodel.html).
