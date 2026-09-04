---
title: "None en Python"
type: atomic
python_version: "3.14"
aliases: []
tags:
  - "python"
  - "estudio"
up:
  - "[[IA graphs/python/Tipos de datos en Python|Tipos de datos en Python]]"
prerequisites: []
parts: []
related:
  - "[[IA graphs/python/Retorno de funciones en Python|Retorno de funciones en Python]]"
  - "[[IA graphs/python/Evaluación booleana en Python|Evaluación booleana en Python]]"
contrasts: []
---

# None en Python

Forma parte de [[IA graphs/python/Tipos de datos en Python|Tipos de datos en Python]].

None representa la ausencia de un valor concreto.

Hay un único objeto `None`, de tipo `NoneType`. Una función sin `return` explícito devuelve ese objeto. También permite expresar que una búsqueda o dato opcional todavía no tiene resultado.

Se comprueba con `x is None`, usando [[IA graphs/python/Identidad e igualdad en Python|identidad]]. No se debe confundir con `0`, `False`, `''` o una colección vacía: esos objetos tienen valores propios. No ofrece métodos de dominio ni propiedades editables; su papel es representar ausencia.

## Ejemplo verificable

```python
def sin_resultado():
    pass

valor = sin_resultado()
print(valor is None)
print(type(valor).__name__)
```

Salida esperada:

```text
True
NoneType
```

## Recuperación activa

> [!question]
> ¿Por qué if not valor puede confundir ausencia con cero?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/reference/datamodel.html).
