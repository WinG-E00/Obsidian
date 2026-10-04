---
title: Inicialización con __init__ en Python
type: atomic
python_version: "3.14"
aliases: []
tags:
  - python
  - estudio
up:
  - "[[Orientación a objetos en Python|Orientación a objetos en Python]]"
prerequisites:
  - "[[Instancias en Python|Instancias en Python]]"
  - "[[Atributos de instancia y de clase en Python|Atributos de instancia y de clase en Python]]"
parts: []
related:
  - "[[Creación con __new__ en Python|Creación con __new__ en Python]]"
  - "[[super y orden de resolución en Python|super y orden de resolución en Python]]"
contrasts:
  - "[[Creación con __new__ en Python|Creación con __new__ en Python]]"
---

# Inicialización con __init__ en Python

Forma parte de [[Orientación a objetos en Python|Orientación a objetos en Python]].

Antes de estudiar: [[Instancias en Python|Instancias en Python]] · [[Atributos de instancia y de clase en Python|Atributos de instancia y de clase en Python]].

__init__ configura una instancia que ya fue creada.

Firma habitual: `__init__(self, argumentos...) -> None`. Asigna atributos y valida el estado inicial; no debe devolver un objeto distinto de `None` o se genera `TypeError`.

La creación corresponde a [[Creación con __new__ en Python|__new__]]. En una subclase, redefinir `__init__` no llama automáticamente al inicializador base; [[super y orden de resolución en Python|super]] permite cooperar con la jerarquía. En el ejemplo, `Producto(nombre: str, precio: int)` expone ambos atributos editables y rechaza precios negativos con `ValueError`.

## Ejemplo verificable

```python
class Producto:
    def __init__(self, nombre, precio):
        if precio < 0:
            raise ValueError('precio negativo')
        self.nombre = nombre
        self.precio = precio

p = Producto('cuaderno', 20)
print(p.nombre, p.precio)
```

Salida esperada:

```text
cuaderno 20
```

## Para comparar

- [[Creación con __new__ en Python|Creación con __new__ en Python]]

## Recuperación activa

> [!question]
> ¿Por qué __init__ no devuelve la instancia?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/reference/datamodel.html).
