---
title: Proyecto integrador de inventario en Python
type: exercise
python_version: "3.14"
aliases: []
tags:
  - python
  - estudio
up:
  - "[[Herramientas y práctica de Python|Herramientas y práctica de Python]]"
prerequisites:
  - "[[dataclasses en Python|dataclasses en Python]]"
  - "[[dict en Python|dict en Python]]"
  - "[[Definición de funciones en Python|Definición de funciones en Python]]"
  - "[[raise y encadenamiento en Python|raise y encadenamiento en Python]]"
  - "[[Serialización con json en Python|Serialización con json en Python]]"
  - "[[Pruebas con unittest en Python|Pruebas con unittest en Python]]"
parts: []
related:
  - "[[Archivos y open en Python|Archivos y open en Python]]"
  - "[[Estructura de un proyecto en Python|Estructura de un proyecto en Python]]"
contrasts: []
---

# Proyecto integrador de inventario en Python

Forma parte de [[Herramientas y práctica de Python|Herramientas y práctica de Python]].

Antes de estudiar: [[dataclasses en Python|dataclasses en Python]] · [[dict en Python|dict en Python]] · [[Definición de funciones en Python|Definición de funciones en Python]] · [[raise y encadenamiento en Python|raise y encadenamiento en Python]] · [[Serialización con json en Python|Serialización con json en Python]] · [[Pruebas con unittest en Python|Pruebas con unittest en Python]].

Un inventario pequeño permite conectar tipos, funciones, objetos, errores y serialización.

El objetivo es mantener productos, rechazar cantidades inválidas y generar datos intercambiables. [[dataclasses en Python|Una dataclass]] representa el producto; [[dict en Python|dict]] permite localizarlo; una función expresa el cambio; [[raise y encadenamiento en Python|raise]] comunica cantidades inválidas y [[Serialización con json en Python|json]] genera texto.

Contrato del ejemplo: `Producto(nombre: str, stock: int=0)` tiene campos editables. `agregar_stock(producto, cantidad: int) -> None` acepta enteros no negativos, rechaza bool y muta el stock; un valor inválido genera `ValueError`.

Ejercicios: añadí `retirar_stock`, que impida dejar un stock negativo; escribí pruebas de cero, cantidad inválida y saldo insuficiente; después guardá el inventario usando [[Archivos y open en Python|with y open]]. Separá la entrada de consola de las funciones de dominio para probarlas sin interacción.

La solución base de abajo permite comprobar el flujo antes de extenderlo.

## Ejemplo verificable

```python
import json
from dataclasses import dataclass, asdict

@dataclass
class Producto:
    nombre: str
    stock: int = 0

def agregar_stock(producto: Producto, cantidad: int) -> None:
    if isinstance(cantidad, bool) or not isinstance(cantidad, int) or cantidad < 0:
        raise ValueError('cantidad debe ser un entero no negativo')
    producto.stock += cantidad

inventario = {'cuaderno': Producto('cuaderno', 2)}
agregar_stock(inventario['cuaderno'], 3)
print(json.dumps(asdict(inventario['cuaderno']), ensure_ascii=False))
```

Salida esperada:

```text
{"nombre": "cuaderno", "stock": 5}
```

## Recuperación activa

> [!question]
> ¿Qué nota explica cada efecto del proyecto: crear, localizar, modificar, rechazar y serializar?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/library/dataclasses.html).
