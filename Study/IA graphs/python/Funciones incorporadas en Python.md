---
title: Funciones incorporadas en Python
type: atomic
python_version: "3.14"
aliases: []
tags:
  - python
  - estudio
up:
  - "[[Herramientas y práctica de Python|Herramientas y práctica de Python]]"
prerequisites:
  - "[[Iterable en Python|Iterable en Python]]"
  - "[[Resolución de nombres LEGB en Python|Resolución de nombres LEGB en Python]]"
parts: []
related:
  - "[[enumerate en Python|enumerate en Python]]"
  - "[[zip en Python|zip en Python]]"
  - "[[list.sort y sorted en Python|list.sort y sorted en Python]]"
contrasts: []
---

# Funciones incorporadas en Python

Forma parte de [[Herramientas y práctica de Python|Herramientas y práctica de Python]].

Antes de estudiar: [[Iterable en Python|Iterable en Python]] · [[Resolución de nombres LEGB en Python|Resolución de nombres LEGB en Python]].

Los nombres incorporados permiten operaciones básicas sin escribir un import.

Se resuelven en la última etapa habitual de [[Resolución de nombres LEGB en Python|LEGB]]. Reasignar `sum` o `list` puede ocultarlos localmente. Muchas funciones delegan en [[Métodos especiales en Python|métodos especiales]] del objeto.

| Familia | Operaciones principales | Contrato orientativo |
|---|---|---|
| Crear o convertir | `int`, `float`, `str`, `list`, `dict`, `set`, `tuple`, `bool` | Devuelven el tipo solicitado o fallan |
| Reducir | `sum`, `min`, `max`, `any`, `all` | Consumen un iterable y calculan un resultado |
| Recorrer | `iter`, `next`, `enumerate`, `zip`, `map`, `filter`, `reversed` | Proporcionan o consumen recorridos |
| Consultar | `len`, `type`, `isinstance`, `issubclass`, `callable`, `hash`, `id` | Interrogan características del objeto |
| Representar | `repr`, `format`, `ascii`, `bin`, `hex`, `oct` | Producen texto |
| Interactuar | `print`, `input`, `open`, `help`, `dir`, `breakpoint` | Tienen contratos y efectos específicos |

`all([])` es True y `any([])` es False. `map(funcion, iterable)` y `filter(predicado, iterable)` son perezosos; `min([])` y `max([])` fallan salvo que se indique `default` en su forma de iterable. La referencia contiene firmas completas.

## Ejemplo verificable

```python
print(sum([2, 3]), min([2, 3]), max([2, 3]))
print(all([]), any([]))
print(list(map(str, [1, 2])))
```

Salida esperada:

```text
5 2 3
True False
['1', '2']
```

## Recuperación activa

> [!question]
> ¿Qué funciones de esta tabla consumen un recorrido sin guardar todos sus elementos?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/library/functions.html).
