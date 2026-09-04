---
title: "list.sort y sorted en Python"
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
  - "[[IA graphs/python/list en Python|list en Python]]"
  - "[[IA graphs/python/Definición de funciones en Python|Definición de funciones en Python]]"
parts: []
related:
  - "[[IA graphs/python/Expresiones lambda en Python|Expresiones lambda en Python]]"
contrasts: []
---

# list.sort y sorted en Python

Forma parte de [[IA graphs/python/list en Python|list en Python]].

Antes de estudiar: [[IA graphs/python/list en Python|list en Python]] · [[IA graphs/python/Definición de funciones en Python|Definición de funciones en Python]].

Ordenar organiza elementos según una clave; sort y sorted difieren en dónde dejan el resultado.

`lista.sort(*, key=None, reverse=False) -> None` ordena la misma lista. `sorted(iterable, /, *, key=None, reverse=False) -> list` crea una lista nueva. `key` es una función que produce el valor comparable de cada elemento.

Ambas ordenaciones son estables: elementos con claves iguales conservan su orden relativo. Comparar claves incompatibles puede generar `TypeError`; una ordenación fallida no promete dejar la lista intacta. Esto conecta el método con [[IA graphs/python/Expresiones lambda en Python|funciones pequeñas]] y [[IA graphs/python/Mutabilidad en Python|mutación]].

## Ejemplo verificable

```python
datos = ['bbb', 'a', 'cc']
print(sorted(datos, key=len))
resultado = datos.sort(key=len, reverse=True)
print(datos, resultado)
```

Salida esperada:

```text
['a', 'cc', 'bbb']
['bbb', 'cc', 'a'] None
```

## Recuperación activa

> [!question]
> ¿Cuál usarías para conservar el orden de la lista original?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/library/stdtypes.html).
