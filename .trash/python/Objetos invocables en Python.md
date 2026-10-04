---
title: Objetos invocables en Python
type: atomic
python_version: "3.14"
aliases: []
tags:
  - python
  - estudio
up:
  - "[[Métodos especiales en Python|Métodos especiales en Python]]"
prerequisites:
  - "[[Clases en Python|Clases en Python]]"
  - "[[Métodos y self en Python|Métodos y self en Python]]"
parts: []
related:
  - "[[Closures en Python|Closures en Python]]"
contrasts: []
---

# Objetos invocables en Python

Forma parte de [[Métodos especiales en Python|Métodos especiales en Python]].

Antes de estudiar: [[Clases en Python|Clases en Python]] · [[Métodos y self en Python|Métodos y self en Python]].

Un objeto es invocable cuando puede usarse con la sintaxis objeto(...).

Las funciones y clases son invocables; una instancia también puede serlo si su clase define `__call__`. `callable(objeto)` consulta si parece admitir llamadas, pero no garantiza que una llamada con argumentos determinados sea válida.

El ejemplo define `Multiplicador(factor: int)` y `__call__(numero: int) -> int`; la instancia conserva su factor sin mutarlo al llamar. Se relaciona con [[Closures en Python|closures]] porque ambas formas pueden combinar comportamiento y estado retenido.

## Ejemplo verificable

```python
class Multiplicador:
    def __init__(self, factor):
        self.factor = factor
    def __call__(self, numero):
        return self.factor * numero

triple = Multiplicador(3)
print(callable(triple), triple(4))
```

Salida esperada:

```text
True 12
```

## Recuperación activa

> [!question]
> ¿Por qué callable(x) no asegura que x(1, 2, 3) vaya a funcionar?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/library/functions.html).
