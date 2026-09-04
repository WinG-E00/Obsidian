---
title: "list en Python"
type: api-object
python_version: "3.14"
aliases:
  - "Lista de Python"
tags:
  - "python"
  - "estudio"
  - "api"
up:
  - "[[IA graphs/python/Secuencias en Python|Secuencias en Python]]"
prerequisites:
  - "[[IA graphs/python/Mutabilidad en Python|Mutabilidad en Python]]"
  - "[[IA graphs/python/Indexación en Python|Indexación en Python]]"
parts:
  - "[[IA graphs/python/list.append en Python|list.append en Python]]"
  - "[[IA graphs/python/list.extend en Python|list.extend en Python]]"
  - "[[IA graphs/python/list.pop en Python|list.pop en Python]]"
  - "[[IA graphs/python/list.sort y sorted en Python|list.sort y sorted en Python]]"
related:
  - "[[IA graphs/python/tuple en Python|tuple en Python]]"
  - "[[IA graphs/python/Copia superficial y profunda en Python|Copia superficial y profunda en Python]]"
contrasts:
  - "[[IA graphs/python/tuple en Python|tuple en Python]]"
---

# list en Python

Forma parte de [[IA graphs/python/Secuencias en Python|Secuencias en Python]].

Antes de estudiar: [[IA graphs/python/Mutabilidad en Python|Mutabilidad en Python]] · [[IA graphs/python/Indexación en Python|Indexación en Python]].

list es una secuencia mutable de referencias a objetos.

Se crea con `[]`, `[a, b]` o `list(iterable=())`. Permite reemplazar posiciones, insertar elementos y almacenar valores de tipos distintos. No tiene propiedades públicas que expongan o permitan asignar su tamaño: se consulta con `len`.

| Firma | Entrada y propósito | Retorno | Efecto o error |
|---|---|---|---|
| `append(x)` | Agrega un objeto al final | `None` | Muta |
| `extend(iterable)` | Agrega cada elemento | `None` | Muta; no iterable: `TypeError` |
| `insert(i, x)` | Inserta en índice entero | `None` | Muta; ajusta límites externos |
| `remove(x)` | Quita primera coincidencia | `None` | Muta; ausente: `ValueError` |
| `pop(i=-1)` | Extrae una posición | El objeto extraído | Muta; fuera de rango: `IndexError` |
| `clear()` | Vacía | `None` | Muta |
| `index(x, start=0, stop=fin)` | Busca una posición | `int` | Ausente: `ValueError` |
| `count(x)` | Cuenta coincidencias | `int` | No muta |
| `sort(*, key=None, reverse=False)` | Ordena por clave opcional | `None` | Muta; claves incompatibles: `TypeError` |
| `reverse()` | Invierte posiciones | `None` | Muta |
| `copy()` | Copia superficial | `list` | Comparte elementos internos |

`fin` representa el final cuando se omite el límite. [[IA graphs/python/list.append en Python|append]], [[IA graphs/python/list.extend en Python|extend]], [[IA graphs/python/list.pop en Python|pop]] y [[IA graphs/python/list.sort y sorted en Python|sort]] tienen notas propias por sus contratos. `+=` también puede modificar la lista compartida. Una lista no es [[IA graphs/python/Hashabilidad en Python|hashable]].

## Partes del concepto

- [[IA graphs/python/list.append en Python|list.append en Python]] — list.append agrega exactamente un objeto al final de la lista.
- [[IA graphs/python/list.extend en Python|list.extend en Python]] — list.extend recorre un iterable y añade sus elementos a una lista.
- [[IA graphs/python/list.pop en Python|list.pop en Python]] — list.pop elimina y devuelve el elemento situado en un índice.
- [[IA graphs/python/list.sort y sorted en Python|list.sort y sorted en Python]] — Ordenar organiza elementos según una clave; sort y sorted difieren en dónde dejan el resultado.

## Ejemplo verificable

```python
a = [2, 1]
a.insert(0, 3)
print(a, a.count(1), a.index(2))
a.remove(2)
a.reverse()
print(a)
b = a.copy()
a.clear()
print(a, b)
```

Salida esperada:

```text
[3, 2, 1] 1 1
[1, 3]
[] [1, 3]
```

## Para comparar

- [[IA graphs/python/tuple en Python|tuple en Python]]

## Recuperación activa

> [!question]
> ¿Qué métodos devuelven un valor útil y cuáles solo mutan la lista?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/library/stdtypes.html).
