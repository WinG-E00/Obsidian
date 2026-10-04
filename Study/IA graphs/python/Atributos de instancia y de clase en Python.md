---
title: Atributos de instancia y de clase en Python
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
  - "[[Mutabilidad en Python|Mutabilidad en Python]]"
parts: []
related:
  - "[[Descriptores en Python|Descriptores en Python]]"
  - "[[Instancias en Python|Instancias en Python]]"
contrasts: []
---

# Atributos de instancia y de clase en Python

Forma parte de [[Orientación a objetos en Python|Orientación a objetos en Python]].

Antes de estudiar: [[Clases en Python|Clases en Python]] · [[Mutabilidad en Python|Mutabilidad en Python]].

Los atributos de instancia guardan estado particular; los de clase pertenecen al objeto clase.

En clases ordinarias, `self.nombre = valor` guarda un atributo en la instancia. Un nombre asignado en el cuerpo de la clase crea un atributo de clase. La lectura puede encontrar el valor compartido de clase si no hay uno propio, aunque [[Descriptores en Python|los descriptores]] añaden reglas de prioridad.

Una lista mutable como atributo de clase queda compartida entre instancias. Reasignar el mismo nombre en una instancia normalmente lo oculta para esa instancia, sin cambiar la clase. El ejemplo expone `especie: str` compartido y `nombre: str` individual, ambos editables.

## Ejemplo verificable

```python
class Mascota:
    especie = 'gato'
    def __init__(self, nombre):
        self.nombre = nombre

a = Mascota('Mora')
b = Mascota('Nube')
a.especie = 'perro'
print(a.especie, b.especie, Mascota.especie)
```

Salida esperada:

```text
perro gato gato
```

## Recuperación activa

> [!question]
> ¿Por qué una lista definida en el cuerpo de una clase puede compartirse accidentalmente?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/tutorial/classes.html).
