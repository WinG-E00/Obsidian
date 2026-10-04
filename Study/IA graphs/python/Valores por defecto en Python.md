---
title: Valores por defecto en Python
type: atomic
python_version: "3.14"
aliases: []
tags:
  - python
  - estudio
up:
  - "[[Parámetros y argumentos en Python|Parámetros y argumentos en Python]]"
prerequisites:
  - "[[Definición de funciones en Python|Definición de funciones en Python]]"
  - "[[Mutabilidad en Python|Mutabilidad en Python]]"
  - "[[None en Python|None en Python]]"
parts: []
related:
  - "[[Clases de parámetros en Python|Clases de parámetros en Python]]"
contrasts: []
---

# Valores por defecto en Python

Forma parte de [[Parámetros y argumentos en Python|Parámetros y argumentos en Python]].

Antes de estudiar: [[Definición de funciones en Python|Definición de funciones en Python]] · [[Mutabilidad en Python|Mutabilidad en Python]] · [[None en Python|None en Python]].

Los valores por defecto se evalúan cuando se ejecuta la definición de la función.

Ese objeto se reutiliza en llamadas posteriores que omiten el argumento. Si el valor es mutable y la función lo modifica, el cambio puede aparecer en la siguiente llamada.

Para crear una lista independiente por llamada, se suele usar `None` y construir la lista dentro del cuerpo. Si `None` es un valor legítimo que hay que diferenciar de la omisión, se usa un centinela propio. El problema deriva de [[Variables y asignación en Python|referencias compartidas]], no de que las listas sean parámetros especiales.

## Ejemplo verificable

```python
def agregar(valor, datos=None):
    if datos is None:
        datos = []
    datos.append(valor)
    return datos

print(agregar(1))
print(agregar(2))
```

Salida esperada:

```text
[1]
[2]
```

## Recuperación activa

> [!question]
> ¿En qué momento se evalúa una lista escrita como valor por defecto?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/tutorial/controlflow.html).
