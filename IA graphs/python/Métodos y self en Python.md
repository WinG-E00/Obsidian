---
title: "Métodos y self en Python"
type: concept
python_version: "3.14"
aliases: []
tags:
  - "python"
  - "estudio"
up:
  - "[[IA graphs/python/Orientación a objetos en Python|Orientación a objetos en Python]]"
prerequisites:
  - "[[IA graphs/python/Definición de funciones en Python|Definición de funciones en Python]]"
  - "[[IA graphs/python/Instancias en Python|Instancias en Python]]"
parts:
  - "[[IA graphs/python/classmethod en Python|classmethod en Python]]"
  - "[[IA graphs/python/staticmethod en Python|staticmethod en Python]]"
related:
  - "[[IA graphs/python/classmethod en Python|classmethod en Python]]"
  - "[[IA graphs/python/staticmethod en Python|staticmethod en Python]]"
  - "[[IA graphs/python/Descriptores en Python|Descriptores en Python]]"
contrasts: []
---

# Métodos y self en Python

Forma parte de [[IA graphs/python/Orientación a objetos en Python|Orientación a objetos en Python]].

Antes de estudiar: [[IA graphs/python/Definición de funciones en Python|Definición de funciones en Python]] · [[IA graphs/python/Instancias en Python|Instancias en Python]].

Un método vinculado combina una función con la instancia que recibirá como primer argumento.

`objeto.metodo(x)` pasa el objeto como primer argumento de la función definida en la clase. `self` es el nombre convencional de ese parámetro, no una palabra reservada.

El método vinculado expone `__self__`, la instancia, y `__func__`, la función subyacente, ambos de lectura. En el ejemplo, `Contador()` crea `valor: int` editable y `incrementar(self) -> int` lo aumenta y devuelve el nuevo estado. La vinculación conecta [[IA graphs/python/Definición de funciones en Python|funciones]] con [[IA graphs/python/Instancias en Python|instancias]].

## Partes del concepto

- [[IA graphs/python/classmethod en Python|classmethod en Python]] — classmethod vincula un método con la clase recibida, en vez de con una instancia.
- [[IA graphs/python/staticmethod en Python|staticmethod en Python]] — staticmethod conserva una función dentro de una clase sin vincularle self ni cls.

## Ejemplo verificable

```python
class Contador:
    def __init__(self):
        self.valor = 0
    def incrementar(self):
        self.valor += 1
        return self.valor

c = Contador()
print(c.incrementar())
print(c.incrementar.__self__ is c)
```

Salida esperada:

```text
1
True
```

## Recuperación activa

> [!question]
> ¿De dónde sale el primer argumento cuando escribís c.incrementar()?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/tutorial/classes.html).
