---
title: "list.extend en Python"
type: method
python_version: "3.14"
aliases: []
tags:
  - "python"
  - "estudio"
  - "api"
up:
  - "[[IA graphs/python/list en Python|list en Python]]"
prerequisites:
  - "[[IA graphs/python/Iterable en Python|Iterable en Python]]"
  - "[[IA graphs/python/list en Python|list en Python]]"
parts: []
related:
  - "[[IA graphs/python/list.append en Python|list.append en Python]]"
contrasts:
  - "[[IA graphs/python/list.append en Python|list.append en Python]]"
---

# list.extend en Python

Forma parte de [[IA graphs/python/list en Python|list en Python]].

Antes de estudiar: [[IA graphs/python/Iterable en Python|Iterable en Python]] · [[IA graphs/python/list en Python|list en Python]].

list.extend recorre un iterable y añade sus elementos a una lista.

Firma: `lista.extend(iterable, /) -> None`. Muta la lista y consume el iterable. Un texto aporta caracteres, una lista aporta sus elementos y un generador se va agotando.

No copia recursivamente los objetos. Un valor no iterable provoca `TypeError`; si el recorrido falla después de algunas entregas, pueden quedar elementos añadidos. Contrasta con [[IA graphs/python/list.append en Python|append]], que agrega el argumento como un solo elemento.

## Ejemplo verificable

```python
datos = [1]
retorno = datos.extend([2, 3])
print(datos, retorno)
datos.extend('ab')
print(datos)
```

Salida esperada:

```text
[1, 2, 3] None
[1, 2, 3, 'a', 'b']
```

## Para comparar

- [[IA graphs/python/list.append en Python|list.append en Python]]

## Recuperación activa

> [!question]
> ¿Por qué extend('ab') agrega dos elementos?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/library/stdtypes.html).
