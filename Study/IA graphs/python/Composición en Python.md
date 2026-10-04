---
title: Composición en Python
type: atomic
python_version: "3.14"
aliases: []
tags:
  - python
  - estudio
up:
  - "[[Orientación a objetos en Python|Orientación a objetos en Python]]"
prerequisites:
  - "[[Clases en Python|Clases en Python]]"
  - "[[Inicialización con __init__ en Python|Inicialización con __init__ en Python]]"
parts: []
related:
  - "[[Polimorfismo y duck typing en Python|Polimorfismo y duck typing en Python]]"
  - "[[Pruebas con unittest en Python|Pruebas con unittest en Python]]"
contrasts:
  - "[[Subclases y sobrescritura en Python|Subclases y sobrescritura en Python]]"
---

# Composición en Python

Forma parte de [[Orientación a objetos en Python|Orientación a objetos en Python]].

Antes de estudiar: [[Clases en Python|Clases en Python]] · [[Inicialización con __init__ en Python|Inicialización con __init__ en Python]].

La composición construye comportamiento usando otros objetos como colaboradores.

Una clase recibe o crea objetos y delega operaciones en ellos. Expresa una relación «tiene o usa», mientras [[Herencia en Python|la herencia]] expresa una relación de especialización de tipo.

Pasar el colaborador al constructor permite sustituirlo en pruebas. En el ejemplo, `Servicio(emisor)` expone `ejecutar() -> str`, que llama `emisor.enviar(texto) -> str`; el servicio no hereda del emisor ni requiere conocer cómo implementa el envío.

## Ejemplo verificable

```python
class Emisor:
    def enviar(self, texto):
        return texto.upper()

class Servicio:
    def __init__(self, emisor):
        self.emisor = emisor
    def ejecutar(self):
        return self.emisor.enviar('hola')

print(Servicio(Emisor()).ejecutar())
```

Salida esperada:

```text
HOLA
```

## Para comparar

- [[Subclases y sobrescritura en Python|Subclases y sobrescritura en Python]]

## Recuperación activa

> [!question]
> ¿Qué ventaja ofrece recibir el colaborador como argumento para una prueba?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/tutorial/classes.html).
