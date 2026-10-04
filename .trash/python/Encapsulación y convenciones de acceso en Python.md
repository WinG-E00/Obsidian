---
title: Encapsulación y convenciones de acceso en Python
type: atomic
python_version: "3.14"
aliases: []
tags:
  - python
  - estudio
up:
  - "[[Orientación a objetos en Python|Orientación a objetos en Python]]"
prerequisites:
  - "[[Atributos de instancia y de clase en Python|Atributos de instancia y de clase en Python]]"
parts: []
related:
  - "[[property en Python|property en Python]]"
  - "[[Métodos especiales en Python|Métodos especiales en Python]]"
contrasts: []
---

# Encapsulación y convenciones de acceso en Python

Forma parte de [[Orientación a objetos en Python|Orientación a objetos en Python]].

Antes de estudiar: [[Atributos de instancia y de clase en Python|Atributos de instancia y de clase en Python]].

Encapsular consiste en ofrecer operaciones coherentes y controlar cómo cambia el estado.

Un nombre con `_` inicial comunica uso interno por convención. Un nombre como `__dato`, sin doble guion bajo final, se transforma incluyendo el nombre de la clase para reducir colisiones en subclases. Esto no lo vuelve inaccesible ni secreto.

[[property en Python|property]] permite validar cambios conservando una interfaz de atributo. Los nombres especiales como `__len__` no expresan privacidad: son protocolos del lenguaje. El ejemplo solo expone públicamente `leer() -> int`, sin mutación.

## Ejemplo verificable

```python
class Caja:
    def __init__(self):
        self.__valor = 3
    def leer(self):
        return self.__valor

caja = Caja()
print(caja.leer())
print(hasattr(caja, '_Caja__valor'))
```

Salida esperada:

```text
3
True
```

## Recuperación activa

> [!question]
> ¿Por qué el doble guion bajo no es un mecanismo de seguridad?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/tutorial/classes.html).
