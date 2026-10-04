---
title: dict en Python
type: api-object
python_version: "3.14"
aliases:
  - Diccionario de Python
tags:
  - python
  - estudio
  - api
up:
  - "[[Tipos de datos en Python|Tipos de datos en Python]]"
prerequisites:
  - "[[Hashabilidad en Python|Hashabilidad en Python]]"
  - "[[Mutabilidad en Python|Mutabilidad en Python]]"
parts:
  - "[[dict.get en Python|dict.get en Python]]"
  - "[[Vistas de diccionario en Python|Vistas de diccionario en Python]]"
  - "[[dict.update en Python|dict.update en Python]]"
related:
  - "[[dict.get en Python|dict.get en Python]]"
  - "[[Vistas de diccionario en Python|Vistas de diccionario en Python]]"
  - "[[dict.update en Python|dict.update en Python]]"
contrasts: []
---

# dict en Python

Forma parte de [[Tipos de datos en Python|Tipos de datos en Python]].

Antes de estudiar: [[Hashabilidad en Python|Hashabilidad en Python]] · [[Mutabilidad en Python|Mutabilidad en Python]].

dict es un mapeo mutable que asocia claves únicas con valores.

Se crea con `{}`, `{'a': 1}` o `dict(...)`. Las claves deben ser [[Hashabilidad en Python|hashables]]; los valores pueden ser cualquier objeto. Conserva el orden de inserción, pero no ordena las claves. `d[k]` exige una clave existente y `k in d` consulta las claves.

| Firma | Entrada y propósito | Retorno | Efecto o error |
|---|---|---|---|
| `get(key, default=None)` | Consulta opcional | Valor o default | No inserta |
| `keys()`, `values()`, `items()` | Vistas de claves, valores o pares | `dict_keys`, `dict_values`, `dict_items` | Reflejan cambios futuros |
| `update(other=(), /, **kwargs)` | Incorpora mapeo o pares | `None` | Muta; sobrescribe coincidencias |
| `setdefault(key, default=None)` | Consulta o inserta valor | Valor existente o insertado | Muta solo si faltaba |
| `pop(key[, default])` | Extrae por clave | Valor o default | Sin clave ni default: `KeyError` |
| `popitem()` | Extrae último par insertado | `tuple` de clave y valor | Vacío: `KeyError` |
| `clear()` | Vacía | `None` | Muta |
| `copy()` | Copia superficial | `dict` | No copia valores internos |
| `dict.fromkeys(iterable, value=None)` | Crea claves con un valor común | `dict` | Todas comparten el mismo objeto value |

Los corchetes en `pop(key[, default])` indican argumento opcional, no código literal. No tiene campos públicos de datos por atributo: `d.nombre` no consulta `d['nombre']`. `d1 | d2` crea un dict combinado y `d1 |= d2` actualiza el primero.

## Partes del concepto

- [[dict.get en Python|dict.get en Python]] — dict.get consulta una clave sin insertarla y permite elegir un valor por defecto.
- [[Vistas de diccionario en Python|Vistas de diccionario en Python]] — keys, values e items ofrecen vistas dinámicas de un diccionario.
- [[dict.update en Python|dict.update en Python]] — dict.update incorpora asociaciones a un diccionario existente.

## Ejemplo verificable

```python
datos = {'a': 1}
datos.setdefault('b', 2)
print(list(datos.keys()), list(datos.values()))
print(datos.pop('a'))
print(datos.popitem())
print(datos)
```

Salida esperada:

```text
['a', 'b'] [1, 2]
1
('b', 2)
{}
```

## Recuperación activa

> [!question]
> ¿Qué diferencia hay entre consultar una clave con get y con setdefault?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/library/stdtypes.html).
