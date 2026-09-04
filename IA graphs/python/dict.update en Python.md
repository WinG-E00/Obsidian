---
title: "dict.update en Python"
type: method
python_version: "3.14"
aliases: []
tags:
  - "python"
  - "estudio"
  - "api"
up:
  - "[[IA graphs/python/dict en Python|dict en Python]]"
prerequisites:
  - "[[IA graphs/python/dict en Python|dict en Python]]"
parts: []
related:
  - "[[IA graphs/python/Mutabilidad en Python|Mutabilidad en Python]]"
contrasts: []
---

# dict.update en Python

Forma parte de [[IA graphs/python/dict en Python|dict en Python]].

Antes de estudiar: [[IA graphs/python/dict en Python|dict en Python]].

dict.update incorpora asociaciones a un diccionario existente.

Firma de uso: `d.update(other=(), /, **kwargs) -> None`. Acepta un mapeo, un iterable de pares o argumentos por nombre. Las claves repetidas toman el nuevo valor; una clave ya existente conserva su posición en el orden de inserción.

Muta el receptor y puede fallar con `TypeError` por claves no hashables o `ValueError` por secuencias que no formen pares. Para obtener un nuevo diccionario, `d1 | d2` expresa una combinación sin modificar los originales.

## Ejemplo verificable

```python
datos = {'a': 1, 'b': 2}
resultado = datos.update({'a': 9, 'c': 3})
print(datos)
print(resultado)
```

Salida esperada:

```text
{'a': 9, 'b': 2, 'c': 3}
None
```

## Recuperación activa

> [!question]
> ¿Actualizar una clave existente la mueve al final?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/library/stdtypes.html).
