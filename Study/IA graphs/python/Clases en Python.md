---
title: Clases en Python
type: atomic
python_version: "3.14"
aliases: []
tags:
  - python
  - estudio
up:
  - "[[Orientación a objetos en Python|Orientación a objetos en Python]]"
prerequisites:
  - "[[Definición de funciones en Python|Definición de funciones en Python]]"
  - "[[Variables y asignación en Python|Variables y asignación en Python]]"
parts: []
related:
  - "[[Instancias en Python|Instancias en Python]]"
  - "[[Métodos y self en Python|Métodos y self en Python]]"
  - "[[Metaclases y creación de clases en Python|Metaclases y creación de clases en Python]]"
contrasts: []
---

# Clases en Python

Forma parte de [[Orientación a objetos en Python|Orientación a objetos en Python]].

Antes de estudiar: [[Definición de funciones en Python|Definición de funciones en Python]] · [[Variables y asignación en Python|Variables y asignación en Python]].

Una clase define un tipo de objeto y reúne comportamiento y atributos comunes.

`class Nombre:` ejecuta un cuerpo en un espacio de nombres y crea un objeto clase. Llamar a esa clase suele construir una instancia. Los métodos se escriben como funciones dentro del cuerpo y reciben la instancia mediante la vinculación de métodos.

La clase también es un objeto: `type(MiClase)` suele ser `type`. Sus atributos de inspección incluyen `__name__: str`, `__bases__: tuple` y `__mro__: tuple`. La interfaz pública de cada clase depende de lo que defina; en el ejemplo es `saludar(self) -> str`, sin mutación ni parámetros explícitos adicionales.

## Ejemplo verificable

```python
class Persona:
    def saludar(self):
        return 'hola'

persona = Persona()
print(persona.saludar())
print(type(persona).__name__)
```

Salida esperada:

```text
hola
Persona
```

## Recuperación activa

> [!question]
> ¿Qué diferencia hay entre Persona y Persona()?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/tutorial/classes.html).
