---
title: "global en Python"
type: atomic
python_version: "3.14"
aliases: []
tags:
  - "python"
  - "estudio"
up:
  - "[[IA graphs/python/Ámbitos de nombres en Python|Ámbitos de nombres en Python]]"
prerequisites:
  - "[[IA graphs/python/Resolución de nombres LEGB en Python|Resolución de nombres LEGB en Python]]"
  - "[[IA graphs/python/Variables y asignación en Python|Variables y asignación en Python]]"
parts: []
related:
  - "[[IA graphs/python/nonlocal en Python|nonlocal en Python]]"
  - "[[IA graphs/python/Pruebas con unittest en Python|Pruebas con unittest en Python]]"
contrasts:
  - "[[IA graphs/python/nonlocal en Python|nonlocal en Python]]"
---

# global en Python

Forma parte de [[IA graphs/python/Ámbitos de nombres en Python|Ámbitos de nombres en Python]].

Antes de estudiar: [[IA graphs/python/Resolución de nombres LEGB en Python|Resolución de nombres LEGB en Python]] · [[IA graphs/python/Variables y asignación en Python|Variables y asignación en Python]].

global declara que una vinculación usa el espacio de nombres del módulo actual.

Permite reasignar un nombre global desde una función. No crea una variable compartida automáticamente entre todos los módulos del programa y no es necesario para leer un global.

Tampoco hace falta para mutar un objeto al que ya se accedió: `lista.append(x)` no reasigna el nombre `lista`. El uso de estado global puede hacer que una función dependa del orden de llamadas; pasar datos y devolver resultados suele facilitar las pruebas.

## Ejemplo verificable

```python
contador = 0
def incrementar():
    global contador
    contador += 1

incrementar()
print(contador)
```

Salida esperada:

```text
1
```

## Para comparar

- [[IA graphs/python/nonlocal en Python|nonlocal en Python]]

## Recuperación activa

> [!question]
> ¿Por qué leer una variable global no requiere declarar global?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/reference/simple_stmts.html).
