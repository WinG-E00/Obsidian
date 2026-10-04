---
title: dict.get en Python
type: method
python_version: "3.14"
aliases: []
tags:
  - python
  - estudio
  - api
up:
  - "[[dict en Python|dict en Python]]"
prerequisites:
  - "[[dict en Python|dict en Python]]"
  - "[[None en Python|None en Python]]"
parts: []
related:
  - "[[Identidad e igualdad en Python|Identidad e igualdad en Python]]"
contrasts: []
---

# dict.get en Python

Forma parte de [[dict en Python|dict en Python]].

Antes de estudiar: [[dict en Python|dict en Python]] · [[None en Python|None en Python]].

dict.get consulta una clave sin insertarla y permite elegir un valor por defecto.

Firma: `d.get(key, default=None, /) -> valor | default`. La clave debe ser hashable. Si falta, devuelve el objeto default; no evalúa un bloque alternativo ni crea una entrada.

Si se necesita distinguir una clave ausente de una clave cuyo valor es `None`, se puede usar un objeto centinela. [[None en Python|None]] solo funciona como señal de ausencia cuando no es también un valor válido del dominio.

## Ejemplo verificable

```python
datos = {'a': None}
centinela = object()
print(datos.get('a') is None)
print(datos.get('b', centinela) is centinela)
print('b' in datos)
```

Salida esperada:

```text
True
True
False
```

## Recuperación activa

> [!question]
> ¿Por qué get puede necesitar un centinela distinto de None?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/library/stdtypes.html).
