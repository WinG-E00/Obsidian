---
title: list.pop en Python
type: method
python_version: "3.14"
aliases: []
tags:
  - python
  - estudio
  - api
up:
  - "[[list en Python|list en Python]]"
prerequisites:
  - "[[Indexación en Python|Indexación en Python]]"
  - "[[list en Python|list en Python]]"
parts: []
related:
  - "[[Eliminación de referencias con del en Python|Eliminación de referencias con del en Python]]"
contrasts: []
---

# list.pop en Python

Forma parte de [[list en Python|list en Python]].

Antes de estudiar: [[Indexación en Python|Indexación en Python]] · [[list en Python|list en Python]].

list.pop elimina y devuelve el elemento situado en un índice.

Firma: `lista.pop(index=-1, /) -> elemento`. Sin argumento extrae el último elemento, útil para implementar una pila. El tipo de retorno es el tipo del objeto extraído, no siempre el tipo de la lista.

Una lista vacía o un índice fuera de rango provoca `IndexError`. Extraer del principio desplaza los elementos restantes; para una cola con muchas extracciones frontales conviene estudiar `collections.deque`. [[Eliminación de referencias con del en Python|del]] elimina una posición sin devolverla.

## Ejemplo verificable

```python
datos = ['a', 'b']
extraido = datos.pop()
print(extraido, datos)
```

Salida esperada:

```text
b ['a']
```

## Recuperación activa

> [!question]
> ¿Qué dos resultados observables tiene pop?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/library/stdtypes.html).
