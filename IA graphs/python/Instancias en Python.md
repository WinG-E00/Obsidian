---
title: "Instancias en Python"
type: atomic
python_version: "3.14"
aliases: []
tags:
  - "python"
  - "estudio"
up:
  - "[[IA graphs/python/Orientación a objetos en Python|Orientación a objetos en Python]]"
prerequisites:
  - "[[IA graphs/python/Clases en Python|Clases en Python]]"
  - "[[IA graphs/python/Identidad e igualdad en Python|Identidad e igualdad en Python]]"
parts: []
related:
  - "[[IA graphs/python/Atributos de instancia y de clase en Python|Atributos de instancia y de clase en Python]]"
  - "[[IA graphs/python/Inicialización con __init__ en Python|Inicialización con __init__ en Python]]"
contrasts: []
---

# Instancias en Python

Forma parte de [[IA graphs/python/Orientación a objetos en Python|Orientación a objetos en Python]].

Antes de estudiar: [[IA graphs/python/Clases en Python|Clases en Python]] · [[IA graphs/python/Identidad e igualdad en Python|Identidad e igualdad en Python]].

Una instancia es un objeto concreto cuyo tipo es una clase.

Cada instancia puede mantener estado propio. Dos llamadas al constructor suelen producir objetos diferentes, aunque una clase puede personalizar la creación. `isinstance(objeto, Clase)` considera también la herencia; `type(objeto) is Clase` exige exactamente ese tipo.

El ejemplo define `Caja(valor)`, con atributo editable `valor` del tipo del argumento y sin métodos públicos adicionales. [[IA graphs/python/Identidad e igualdad en Python|La identidad]] distingue las dos cajas, mientras [[IA graphs/python/Atributos de instancia y de clase en Python|los atributos]] conservan el estado.

## Ejemplo verificable

```python
class Caja:
    def __init__(self, valor):
        self.valor = valor

a = Caja(1)
b = Caja(1)
print(a is b)
print(isinstance(a, Caja), a.valor)
```

Salida esperada:

```text
False
True 1
```

## Recuperación activa

> [!question]
> ¿Qué comprueba isinstance que no comprueba type(x) is Clase?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/tutorial/classes.html).
