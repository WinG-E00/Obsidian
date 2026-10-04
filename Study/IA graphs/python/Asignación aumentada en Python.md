---
title: Asignación aumentada en Python
type: atomic
python_version: "3.14"
aliases: []
tags:
  - python
  - estudio
up:
  - "[[Expresiones y operadores en Python|Expresiones y operadores en Python]]"
prerequisites:
  - "[[Variables y asignación en Python|Variables y asignación en Python]]"
  - "[[Mutabilidad en Python|Mutabilidad en Python]]"
parts: []
related:
  - "[[Sobrecarga de operadores en Python|Sobrecarga de operadores en Python]]"
contrasts: []
---

# Asignación aumentada en Python

Forma parte de [[Expresiones y operadores en Python|Expresiones y operadores en Python]].

Antes de estudiar: [[Variables y asignación en Python|Variables y asignación en Python]] · [[Mutabilidad en Python|Mutabilidad en Python]].

Una asignación aumentada combina una operación con la actualización de su destino.

`x += y` utiliza la operación en el sitio cuando el tipo la ofrece; si no, calcula un resultado y lo reasigna. El destino se evalúa una vez. Por ello no siempre es equivalente en efectos a escribir `x = x + y`.

En una lista compartida, `+=` suele extender el mismo objeto; en un entero crea o reutiliza otro valor y cambia la vinculación. También existen `-=`, `*=`, `/=`, `//=`, `%=`, `**=`, `&=`, `|=`, `^=`, `<<=`, `>>=` y `@=` para tipos compatibles.

## Ejemplo verificable

```python
a = [1]
b = a
a += [2]
print(a, b, a is b)
x = 1
y = x
x += 1
print(x, y)
```

Salida esperada:

```text
[1, 2] [1, 2] True
2 1
```

## Recuperación activa

> [!question]
> ¿Por qué += puede afectar a otro nombre que referencia una lista?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/reference/simple_stmts.html).
