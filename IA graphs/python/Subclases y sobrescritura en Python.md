---
title: "Subclases y sobrescritura en Python"
type: atomic
python_version: "3.14"
aliases: []
tags:
  - "python"
  - "estudio"
up:
  - "[[IA graphs/python/Herencia en Python|Herencia en Python]]"
prerequisites:
  - "[[IA graphs/python/Clases en Python|Clases en Python]]"
  - "[[IA graphs/python/Métodos y self en Python|Métodos y self en Python]]"
parts: []
related:
  - "[[IA graphs/python/super y orden de resolución en Python|super y orden de resolución en Python]]"
  - "[[IA graphs/python/Composición en Python|Composición en Python]]"
  - "[[IA graphs/python/Polimorfismo y duck typing en Python|Polimorfismo y duck typing en Python]]"
contrasts:
  - "[[IA graphs/python/Composición en Python|Composición en Python]]"
---

# Subclases y sobrescritura en Python

Forma parte de [[IA graphs/python/Herencia en Python|Herencia en Python]].

Antes de estudiar: [[IA graphs/python/Clases en Python|Clases en Python]] · [[IA graphs/python/Métodos y self en Python|Métodos y self en Python]].

Una subclase hereda comportamiento y puede reemplazar métodos de sus clases base.

La sintaxis `class Hija(Base):` establece la relación. Un método con el mismo nombre puede cambiar el comportamiento observado en las instancias de la subclase. `isinstance` reconoce esa relación y `issubclass(Hija, Base)` la consulta entre clases.

La herencia debe preservar un contrato utilizable donde se esperaba la clase base. Reutilizar código no garantiza que la relación conceptual sea adecuada: [[IA graphs/python/Composición en Python|la composición]] permite usar otro objeto sin declarar que se es una variante de él.

## Ejemplo verificable

```python
class Animal:
    def sonido(self):
        return '...'

class Gato(Animal):
    def sonido(self):
        return 'miau'

print(Gato().sonido())
print(issubclass(Gato, Animal))
```

Salida esperada:

```text
miau
True
```

## Para comparar

- [[IA graphs/python/Composición en Python|Composición en Python]]

## Recuperación activa

> [!question]
> ¿Qué significa que una subclase conserve el contrato de su base?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/tutorial/classes.html).
