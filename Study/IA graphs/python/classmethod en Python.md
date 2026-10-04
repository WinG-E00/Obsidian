---
title: classmethod en Python
type: atomic
python_version: "3.14"
aliases: []
tags:
  - python
  - estudio
up:
  - "[[Métodos y self en Python|Métodos y self en Python]]"
prerequisites:
  - "[[Métodos y self en Python|Métodos y self en Python]]"
  - "[[Decoradores en Python|Decoradores en Python]]"
parts: []
related:
  - "[[staticmethod en Python|staticmethod en Python]]"
  - "[[Herencia en Python|Herencia en Python]]"
contrasts:
  - "[[staticmethod en Python|staticmethod en Python]]"
---

# classmethod en Python

Forma parte de [[Métodos y self en Python|Métodos y self en Python]].

Antes de estudiar: [[Métodos y self en Python|Métodos y self en Python]] · [[Decoradores en Python|Decoradores en Python]].

classmethod vincula un método con la clase recibida, en vez de con una instancia.

El decorador hace que el primer argumento implícito sea la clase, llamada convencionalmente `cls`. Es útil para constructores alternativos que deben respetar la subclase usada en la llamada.

El ejemplo define `Medida(valor: int)` y `desde_texto(cls, texto: str) -> Medida`. La conversión usa `int`, puede producir `ValueError` y crea una instancia nueva. Contrasta con [[staticmethod en Python|staticmethod]], que no recibe un primer argumento implícito.

## Ejemplo verificable

```python
class Medida:
    def __init__(self, valor):
        self.valor = valor
    @classmethod
    def desde_texto(cls, texto):
        return cls(int(texto))

print(Medida.desde_texto('12').valor)
```

Salida esperada:

```text
12
```

## Para comparar

- [[staticmethod en Python|staticmethod en Python]]

## Recuperación activa

> [!question]
> ¿Por qué un constructor alternativo suele usar cls(...) y no el nombre fijo de la clase?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/library/functions.html).
