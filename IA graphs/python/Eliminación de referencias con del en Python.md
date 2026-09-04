---
title: "Eliminación de referencias con del en Python"
type: atomic
python_version: "3.14"
aliases: []
tags:
  - "python"
  - "estudio"
up:
  - "[[IA graphs/python/Modelo de objetos en Python|Modelo de objetos en Python]]"
prerequisites:
  - "[[IA graphs/python/Variables y asignación en Python|Variables y asignación en Python]]"
parts: []
related:
  - "[[IA graphs/python/Gestión de memoria en Python|Gestión de memoria en Python]]"
contrasts: []
---

# Eliminación de referencias con del en Python

Forma parte de [[IA graphs/python/Modelo de objetos en Python|Modelo de objetos en Python]].

Antes de estudiar: [[IA graphs/python/Variables y asignación en Python|Variables y asignación en Python]].

del elimina una vinculación, un atributo o una posición de un contenedor.

`del nombre` retira ese nombre de su espacio de nombres. `del lista[i]` solicita al contenedor eliminar un elemento. Estas acciones no significan necesariamente que el objeto deje de existir: otra referencia puede mantenerlo accesible.

Eliminar un nombre inexistente produce `NameError`; un índice inexistente, `IndexError`. [[IA graphs/python/Gestión de memoria en Python|La gestión de memoria]] decide cuándo recuperar objetos que ya no se necesitan.

## Ejemplo verificable

```python
a = [4, 5]
b = a
del a
del b[0]
print(b)
```

Salida esperada:

```text
[5]
```

## Recuperación activa

> [!question]
> ¿Por qué del a no borra la lista si b todavía la referencia?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/reference/simple_stmts.html).
