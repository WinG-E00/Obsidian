---
title: Polimorfismo y duck typing en Python
type: atomic
python_version: "3.14"
aliases: []
tags:
  - python
  - estudio
up:
  - "[[Orientación a objetos en Python|Orientación a objetos en Python]]"
prerequisites:
  - "[[Métodos y self en Python|Métodos y self en Python]]"
parts: []
related:
  - "[[Protocol en Python|Protocol en Python]]"
  - "[[Clases abstractas en Python|Clases abstractas en Python]]"
contrasts: []
---

# Polimorfismo y duck typing en Python

Forma parte de [[Orientación a objetos en Python|Orientación a objetos en Python]].

Antes de estudiar: [[Métodos y self en Python|Métodos y self en Python]].

El polimorfismo permite usar objetos diferentes mediante una operación común.

En duck typing, el código necesita un comportamiento compatible y no necesariamente una clase base compartida. Si una función usa `objeto.leer()`, lo decisivo es que esa operación exista y cumpla el contrato esperado.

[[Protocol en Python|Protocol]] expresa compatibilidad estructural para un verificador estático. Una clase abstracta puede imponer métodos en una jerarquía nominal. Ambos ayudan a describir contratos, pero no reemplazan las pruebas de comportamiento.

## Ejemplo verificable

```python
class Texto:
    def leer(self):
        return 'contenido'

class Memoria:
    def leer(self):
        return 'caché'

for fuente in [Texto(), Memoria()]:
    print(fuente.leer())
```

Salida esperada:

```text
contenido
caché
```

## Recuperación activa

> [!question]
> ¿Se necesita herencia común para que dos objetos puedan usarse mediante leer()?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/tutorial/classes.html).
