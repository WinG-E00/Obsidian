---
title: nonlocal en Python
type: atomic
python_version: "3.14"
aliases: []
tags:
  - python
  - estudio
up:
  - "[[Ámbitos de nombres en Python|Ámbitos de nombres en Python]]"
prerequisites:
  - "[[Resolución de nombres LEGB en Python|Resolución de nombres LEGB en Python]]"
parts: []
related:
  - "[[Closures en Python|Closures en Python]]"
  - "[[global en Python|global en Python]]"
contrasts:
  - "[[global en Python|global en Python]]"
---

# nonlocal en Python

Forma parte de [[Ámbitos de nombres en Python|Ámbitos de nombres en Python]].

Antes de estudiar: [[Resolución de nombres LEGB en Python|Resolución de nombres LEGB en Python]].

nonlocal permite reasignar una vinculación de una función envolvente.

Busca una vinculación existente en la función externa más cercana que la tenga; no se refiere al módulo. Si no existe una vinculación válida, la definición produce `SyntaxError`.

Es útil cuando una [[Closures en Python|closure]] conserva un contador u otro estado entre llamadas. Como con global, mutar un objeto ya accesible no equivale a reasignar el nombre que lo referencia.

## Ejemplo verificable

```python
def crear_contador():
    cantidad = 0
    def siguiente():
        nonlocal cantidad
        cantidad += 1
        return cantidad
    return siguiente

contador = crear_contador()
print(contador(), contador())
```

Salida esperada:

```text
1 2
```

## Para comparar

- [[global en Python|global en Python]]

## Recuperación activa

> [!question]
> ¿Qué vinculación modifica nonlocal y cuál modifica global?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/reference/simple_stmts.html).
