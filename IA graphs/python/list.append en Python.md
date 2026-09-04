---
title: "list.append en Python"
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
  - "[[IA graphs/python/Mutabilidad en Python|Mutabilidad en Python]]"
  - "[[IA graphs/python/None en Python|None en Python]]"
parts: []
related:
  - "[[IA graphs/python/list.extend en Python|list.extend en Python]]"
contrasts:
  - "[[IA graphs/python/list.extend en Python|list.extend en Python]]"
---

# list.append en Python

Forma parte de [[IA graphs/python/list en Python|list en Python]].

Antes de estudiar: [[IA graphs/python/Mutabilidad en Python|Mutabilidad en Python]] · [[IA graphs/python/None en Python|None en Python]].

list.append agrega exactamente un objeto al final de la lista.

Firma: `lista.append(objeto, /) -> None`. El argumento puede ser cualquier objeto, incluida otra lista. Se almacena la referencia a ese objeto, no una copia.

El resultado de retorno es [[IA graphs/python/None en Python|None]]; el efecto es modificar la lista original. `lista = lista.append(x)` pierde la vinculación de `lista` con el contenedor al reasignarla a `None`. Para agregar los elementos de otro iterable se usa [[IA graphs/python/list.extend en Python|extend]].

## Ejemplo verificable

```python
datos = ['a']
retorno = datos.append(['b', 'c'])
print(datos)
print(retorno)
```

Salida esperada:

```text
['a', ['b', 'c']]
None
```

## Para comparar

- [[IA graphs/python/list.extend en Python|list.extend en Python]]

## Recuperación activa

> [!question]
> ¿Cuántos elementos agrega append si su argumento es una lista?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/library/stdtypes.html).
